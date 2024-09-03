<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Config;
use App\Models\UserS3Conf;

class UserFilesystemConfigServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Ensure the user is authenticated
        if ($user = auth()->user()) {
            // Retrieve S3 configuration settings for the authenticated user
            $s3Config = UserS3Conf::where('user_id', $user->id)->first();

            if ($s3Config) {
                // Update the S3 configuration dynamically
                Config::set('filesystems.disks.s3', [
                    'driver' => 's3',
                    'key' => $s3Config->storage_s3_key,
                    'secret' => $s3Config->storage_s3_secret,
                    'region' => $s3Config->storage_s3_region,
                    'bucket' => $s3Config->storage_s3_bucket,
                    'endpoint' => $s3Config->storage_s3_endpoint,
                    'url' => $s3Config->storage_s3_endpoint,
                    'use_path_style_endpoint' => true, // Set to true if using path style endpoints
                ]);
            }
        }
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
