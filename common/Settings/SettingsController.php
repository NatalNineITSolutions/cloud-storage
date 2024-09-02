<?php namespace Common\Settings;

use Common\Core\AppUrl;
use Common\Core\BaseController;
use Common\Settings\Events\SettingsSaved;
use Common\Settings\Mail\ConnectGmailAccountController;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use ReflectionClass;
use App\Models\UserS3Conf;

class SettingsController extends BaseController
{
    public function __construct(
        protected Request $request,
        protected Settings $settings,
        protected DotEnvEditor $dotEnv,
    ) {
    }

    public function index()
    {
        $this->authorize('index', Setting::class);
        $envSettings = $this->dotEnv->load('.env');
        $envSettings['newAppUrl'] = app(AppUrl::class)->newAppUrl;
        $envSettings[
            'connectedGmailAccount'
        ] = ConnectGmailAccountController::getConnectedEmail();

        // inputs on frontend can't be bound to null
        foreach ($envSettings as $key => $value) {
            if ($value === null) {
                $envSettings[$key] = '';
            }
        }

        return [
            'server' => $envSettings,
            'client' => $this->settings->getUnflattened(true),
        ];
    }

    // public function persist()
    // {
    //     $this->authorize('update', Setting::class);

    //     $clientSettings = $this->cleanValues($this->request->get('client'));
    //     $serverSettings = $this->cleanValues($this->request->get('server'));

    //     // need to handle files before validating
    //     $this->handleFiles();

    //     if (
    //         $errResponse = $this->validateSettings(
    //             $serverSettings,
    //             $clientSettings,
    //         )
    //     ) {
    //         return $errResponse;
    //     }

    //     if ($serverSettings) {
    //         $this->dotEnv->write($serverSettings);
    //     }

    //     if ($clientSettings) {
    //         $this->settings->save($clientSettings);
    //     }

    //     Cache::flush();

    //     event(new SettingsSaved($clientSettings, $serverSettings));

    //     return $this->success();
    // }

    
    
    private function cleanValues(string|null $config): array
    {
        if (!$config) {
            return [];
        }
        $config = json_decode($config, true);
        foreach ($config as $key => $value) {
            $config[$key] = is_string($value) ? trim($value) : $value;
        }
        return $config;
    }

    private function handleFiles()
    {
        $files = $this->request->allFiles();

        // store google analytics certificate file
        if ($certificateFile = Arr::get($files, 'certificate')) {
            File::put(
                storage_path('laravel-analytics/certificate.json'),
                file_get_contents($certificateFile),
            );
        }
    }

    private function validateSettings(
        array $serverSettings,
        array $clientSettings,
    ) {
        // flatten "client" and "server" arrays into single array
        $values = array_merge(
            $serverSettings ?: [],
            $clientSettings ?: [],
            $this->request->allFiles(),
        );
        $keys = array_keys($values);
        $validators = config('common.setting-validators');

        foreach ($validators as $validator) {
            if (empty(array_intersect($validator::KEYS, $keys))) {
                continue;
            }

            try {
                if ($messages = app($validator)->fails($values)) {
                    return $this->error(
                        __('Could not persist settings.'),
                        $messages,
                    );
                }
                // catch and display any generic error that might occur
            } catch (Exception $e) {
                // Common\Settings\Validators\GoogleLoginValidator => GoogleLoginValidator
                $class = (new ReflectionClass($validator))->getShortName();
                // GoogleLoginValidator => google-login-validator => google => google_group
                $groupName = explode('-', Str::kebab($class))[0] . '_group';
                return $this->error(__('Could not persist settings.'), [
                    $groupName => Str::limit($e->getMessage(), 200),
                ]);
            }
        }
    }

   

    public function persist()
    {
        $this->authorize('update', Setting::class);
    
        $clientSettings = $this->cleanValues($this->request->get('client'));
        $serverSettings = $this->cleanValues($this->request->get('server'));
    
        // Handle files before validating
        $this->handleFiles();
    
        // Validate settings
        if ($errResponse = $this->validateSettings($serverSettings, $clientSettings)) {
            return $errResponse;
        }
    
        $isSuperAdmin = auth()->user()->user_type === 'super_admin';
        $userId = auth()->user()->id;
    
        // Initialize a flag for tracking S3 connection status
        $s3ConnectionSuccess = true;
    
        if ($isSuperAdmin) {
            if ($serverSettings) {
                // Optionally handle .env changes or other super admin-specific logic
                $this->dotEnv->write($serverSettings);
            }
            if ($clientSettings) {
                $this->settings->save($clientSettings);
            }
        } else {
            $userSettings = [];
            foreach ($serverSettings as $key => $value) {
                // Format server settings for non-super admins
                $userSettings[$key] = $value;
            }
            \Log::info('Non-super admin settings transformation.', [
                'originalServerSettings' => $serverSettings,
                'userSettings' => $userSettings,
            ]);
    
            if ($serverSettings) {
                \Log::info('Updating database with server settings for non-super admin.', $userSettings);
                $this->settings->save($userSettings);
            }
            if ($clientSettings) {
                \Log::info('Updating database with client settings for non-super admin.', $clientSettings);
                $this->settings->save($clientSettings);
            }
    
            \Log::info('Starting to retrieve S3 configuration settings.');
    
            // Retrieve and format S3 configuration settings
            $formattedConfig = $this->getS3Config();
    
            \Log::info('Formatted S3 configuration:', $formattedConfig);
    
            // Retrieve S3 credentials from the formatted configuration
            $s3Region = $formattedConfig['storage_s3_region'] ?? null;
            $s3Key = $formattedConfig['storage_s3_key'] ?? null;
            $s3Secret = $formattedConfig['storage_s3_secret'] ?? null;
            $s3Bucket = $formattedConfig['storage_s3_bucket'] ?? null;
            $s3Endpoint = $formattedConfig['storage_s3_endpoint'] ?? null;
    
            \Log::info('S3 Configuration Details:', [
                'region' => $s3Region,
                'key' => $s3Key,
                'secret' => $s3Secret,
                'bucket' => $s3Bucket,
                'endpoint' => $s3Endpoint
            ]);
    
            try {
                $s3Client = new \Aws\S3\S3Client([
                    'version'     => 'latest',
                    'region'      => $s3Region,
                    'credentials' => [
                        'key'    => $s3Key,
                        'secret' => $s3Secret,
                    ],
                    'endpoint'    => $s3Endpoint,
                ]);
    
                $result = $s3Client->listObjects([
                    'Bucket' => $s3Bucket,
                ]);
    
                \Log::info('S3 Objects:', $result->get('Contents'));
    
                $this->UserS3ConfigUpdate($formattedConfig);
    
            } catch (\Aws\Exception\AwsException $e) {
                \Log::error('Failed to connect to S3: ' . $e->getMessage());
                $s3ConnectionSuccess = false; // Update flag if S3 connection fails
            }
        }
    
        Cache::flush();
    
        event(new SettingsSaved($clientSettings, $serverSettings));
    
        if ($s3ConnectionSuccess) {
            return $this->success();
        } else {
            return response()->json(['status' => 'error', 'message' => 'Failed to connect to S3'], 500);
        }
    }
    

    private function getS3Config()
    {
        // Get the user ID from the authenticated user
        $userId = auth()->user()->id;
        \Log::info('User ID for filtering S3 configuration:', ['userId' => $userId]);
    
        // Retrieve S3 configuration settings from the database where the name includes the user ID prefix
        $s3Config = Setting::where('name', 'like', "$userId.storage_s3_%")
            ->pluck('value', 'name')
            ->toArray();
    
        \Log::info('Retrieved raw S3 configuration settings:', $s3Config);
    
        $formattedConfig = [];
        foreach ($s3Config as $key => $value) {
            \Log::info('Original key before formatting:', ['key' => $key]);
    
            // Remove the user ID prefix 
            $formattedKey = preg_replace('/^\d+\./', '', $key);
    
            \Log::info('Formatted key after removing prefix:', ['formattedKey' => $formattedKey]);

            $formattedConfig[$formattedKey] = $value;
        }
    
        \Log::info('Formatted S3 configuration:', $formattedConfig);
    
        return $formattedConfig;
    }

    // public function UserS3Config()
    // {
        
    //     $s3Config = $this->getUserS3Config();
    //     \Log::info('hello');

    //     // Check if S3 configuration exists
    //     if (empty($s3Config)) {
    //         return $this->error('S3 configuration not found for user.');
    //     }

    //     $s3Client = new \Aws\S3\S3Client([
    //         'version' => 'latest',
    //         'region'  => $s3Config['s3_region'] ?? 'default-region',
    //         'credentials' => [
    //             'key'    => $s3Config['s3_key'] ?? 'default-key',
    //             'secret' => $s3Config['s3_secret'] ?? 'default-secret',
    //         ],
    //     ]);

    //     try {
    //         $result = $s3Client->listBuckets();
    //         return response()->json($result->get('Buckets'));
    //     } catch (\Aws\Exception\AwsException $e) {
    //         return $this->error('Failed to connect to S3: ' . $e->getMessage());
    //     }

    // }

    public function UserS3ConfigUpdate(array $config)
    {
        $userId = auth()->user()->id;
    
        try {
            // Retrieve existing configuration or create a new one
            $userS3Conf = UserS3Conf::firstOrNew(['user_id' => $userId]);
    
            // Update the configuration fields
            $userS3Conf->storage_s3_region = $config['storage_s3_region'] ?? $userS3Conf->storage_s3_region;
            $userS3Conf->storage_s3_key = $config['storage_s3_key'] ?? $userS3Conf->storage_s3_key;
            $userS3Conf->storage_s3_secret = $config['storage_s3_secret'] ?? $userS3Conf->storage_s3_secret;
            $userS3Conf->storage_s3_bucket = $config['storage_s3_bucket'] ?? $userS3Conf->storage_s3_bucket;
            $userS3Conf->storage_s3_endpoint = $config['storage_s3_endpoint'] ?? $userS3Conf->storage_s3_endpoint;
    
            // Save changes to the database
            $userS3Conf->save();
    
            \Log::info('Successfully updated S3 configuration for user ID: ' . $userId);
    
            // Update the .env file with the user's S3 configuration
            // $this->updateDotEnv([
            //     'S3_REGION' => $userS3Conf->storage_s3_region,
            //     'S3_KEY' => $userS3Conf->storage_s3_key,
            //     'S3_SECRET' => $userS3Conf->storage_s3_secret,
            //     'S3_BUCKET' => $userS3Conf->storage_s3_bucket,
            //     'S3_ENDPOINT' => $userS3Conf->storage_s3_endpoint,
            // ]);
    
        } catch (\Exception $e) {
            \Log::error('Failed to update S3 configuration for user ID: ' . $userId . '. Error: ' . $e->getMessage());
        }
    }

    private function updateDotEnv(array $config)
    {
        $envFile = base_path('.env');

        foreach ($config as $key => $value) {
            // Use `file_put_contents` to write key-value pairs to the .env file
            $this->updateEnvFile($envFile, $key, $value);
        }
    }

    private function updateEnvFile($envFile, $key, $value)
    {
        $content = file_get_contents($envFile);

        // If the key exists in the .env file, update its value
        if (preg_match("/^$key=.*$/m", $content)) {
            $content = preg_replace("/^$key=.*$/m", "$key=$value", $content);
        } else {
            // If the key does not exist, add it
            $content .= "\n$key=$value";
        }

        file_put_contents($envFile, $content);
    }


    

}
