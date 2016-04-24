<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Capsule\Manager as DB;

class Image extends Model{
    protected $fillable =   [
        'image_title', 'image_description', 'image_link', 'image_category', 'user_id'
    ];


    public function category(){
        return $this->belongsTo('App\Models\Categorylist');
    }

    public function getCategoryId(){
        return $this->category->id;
    }

    public function getCategoryName(){
        return $this->category->category_name;
    }

    public function getAllImage($id){
        $query = "SELECT images.*, users.name FROM images, users where images.image_category=$id AND images.user_id=users.id ORDER BY images.id";
        return DB::select(DB::raw($query));
    }

}