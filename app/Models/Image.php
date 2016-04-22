<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model{
    protected $fillable =   [
        'image_title', 'image_description', 'image_link', 'image_category'
    ];

    public function category()
    {
        return $this->belongsTo('App\Models\Categorylist');
    }
}