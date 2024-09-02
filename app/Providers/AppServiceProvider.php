<?php

namespace App\Providers;

use App\Models\Episode;
use App\Models\FileEntry;
use App\Models\NewsArticle;
use App\Models\Person;
use App\Models\Season;
use App\Models\Title;
use App\Models\User;
use App\Services\Admin\GetAnalyticsHeaderData;
use App\Services\AppBootstrapData;
use App\Services\Entries\SetPermissionsOnEntry;
use Common\Admin\Analytics\Actions\GetAnalyticsHeaderDataAction;
use Common\Core\Bootstrap\BootstrapData;
use Common\Files\FileEntry as CommonFileEntry;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Support\ServiceProvider;
use App\Models\UserS3Conf;
use Illuminate\Support\Facades\Config;


const WORKSPACED_RESOURCES = [FileEntry::class];
const WORKSPACE_HOME_ROUTE = '/drive';

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        $this->app->bind(
            GetAnalyticsHeaderDataAction::class,
            GetAnalyticsHeaderData::class,
        );

        $this->app->bind(BootstrapData::class, AppBootstrapData::class);

        $this->app->bind(CommonFileEntry::class, FileEntry::class);

        $this->app->singleton(
            SetPermissionsOnEntry::class,
            fn() => new SetPermissionsOnEntry(),
        );
    }

    public function boot()
    {
        Model::preventLazyLoading(!app()->isProduction());

        Relation::enforceMorphMap([
            FileEntry::MODEL_TYPE => FileEntry::class,
            User::MODEL_TYPE => User::class,
        ]);

         // New functionality to dynamically load S3 configuration
        //  $this->app->singleton('s3.config', function ($app) {
        //     $userId = auth()->user()->id;

        //     // Retrieve S3 configuration for the authenticated user
        //     $userS3Conf = UserS3Conf::where('user_id', $userId)->first();

        //     if ($userS3Conf) {
        //         // Set the S3 configuration values dynamically
        //         Config::set('filesystems.disks.s3.key', $userS3Conf->storage_s3_key);
        //         Config::set('filesystems.disks.s3.secret', $userS3Conf->storage_s3_secret);
        //         Config::set('filesystems.disks.s3.region', $userS3Conf->storage_s3_region);
        //         Config::set('filesystems.disks.s3.bucket', $userS3Conf->storage_s3_bucket);
        //         Config::set('filesystems.disks.s3.endpoint', $userS3Conf->storage_s3_endpoint);
        //     }
        // });
    }
}
