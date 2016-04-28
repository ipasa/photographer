<?php

namespace App\Controllers\Image;

use App\Controllers\Controller;
use App\Models\Follow;
use App\Models\Image;
use Illuminate\Database\Capsule\Manager as DB;

class FollowController extends Controller
{
    public function followUser($request, $response, $args){
        $image_id   =   $request->getParam('image_id');
        
        $follow =   Follow::create([
            'follower_id'   =>  $request->getParam('followed_id'),
            'followed_id'   =>  $request->getParam('follower_id'),
        ]);
        return $response->withRedirect($this->router->pathFor('singleimage', ['id' => $image_id] ));
    }

    public function unFollowUser($request, $response, $args){
        $image_id       = $request->getParam('image_id');
        $follower_id    = $request->getParam('followed_id');
        $followed_id    = $request->getParam('follower_id');

        $query = DB::select(DB::raw('DELETE FROM follows WHERE follower_id='.$follower_id.' AND followed_id='.$followed_id));
        return $response->withRedirect($this->router->pathFor('singleimage', ['id' => $image_id] ));

    }
}