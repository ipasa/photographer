<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categorylist extends Model
{
    public function image()
    {
        return $this->hasMany('App\Models\Image');
    }
}