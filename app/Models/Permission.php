<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Permission extends Model
{
    protected $fillable = [
        'id', 'name', 'display_name', 'description', 'group', 'restrictions', 'type', 'advanced'
    ];

    public function permissionables()
    {
        return $this->hasMany(Permissionable::class);
    }
}
