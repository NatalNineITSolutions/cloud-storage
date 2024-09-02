<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserS3Conf extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'storage_s3_region',
        'storage_s3_key',
        'storage_s3_secret',
        'storage_s3_bucket',
        'storage_s3_endpoint',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
