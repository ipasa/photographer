<?php

namespace App\Controllers\Image;

use App\Controllers\Controller;
use App\Models\Image;
use Illuminate\Database\Capsule\Manager as DB;

class FollowController extends Controller
{
    public function followUser($request, $response, $args){
        return $request->getParam('followed_id').'<br>'.$request->getParam('follower_id');

    }

    public function unFollowUser($request, $response, $args){

    }
}