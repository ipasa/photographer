<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Follow extends Model{
    protected $fillable =   [
        'follower_id', 'followed_id'
    ];
}