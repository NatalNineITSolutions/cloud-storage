<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permissionable extends Model
{
    protected $fillable = [
        'id', 'permission_id', 'permissionable_id', 'permissionable_type', 'restrictions'
    ];

    public function permission()
    {
        return $this->belongsTo(Permission::class);
    }
}