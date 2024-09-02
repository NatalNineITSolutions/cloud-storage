<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use App\Models\UserS3Conf;

class SetS3Config
{
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $userId = Auth::id();

            // Retrieve the S3 configuration from the database for the authenticated user
            $userS3Conf = UserS3Conf::where('user_id', $userId)->first();

            if ($userS3Conf) {
                // Set the S3 configuration values dynamically for this user
                Config::set('filesystems.disks.s3.key', $userS3Conf->storage_s3_key);
                Config::set('filesystems.disks.s3.secret', $userS3Conf->storage_s3_secret);
                Config::set('filesystems.disks.s3.region', $userS3Conf->storage_s3_region);
                Config::set('filesystems.disks.s3.bucket', $userS3Conf->storage_s3_bucket);
                Config::set('filesystems.disks.s3.endpoint', $userS3Conf->storage_s3_endpoint);
            }
        }

        return $next($request);
    }
}
