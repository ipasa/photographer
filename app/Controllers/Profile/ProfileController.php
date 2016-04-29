<?php

namespace App\Controllers\Profile;

use App\Controllers\Controller;
use App\Models\Categorylist;
use App\Models\Favorite;
use App\Models\Follow;
use App\Models\Image;
use App\Models\User;
use Illuminate\Database\Capsule\Manager as DB;


class ProfileController extends Controller
{
    public function index($request, $response, $args)
    {
        $id =   $args['id'];
        $images =   Image::where('user_id', $id)->get();
        $user_name  =   User::find($id);

        if (!$images->count()) {
            $images =   false;
        }

        return $this->view->render($response, 'profile/user.twig',[
            'images'    =>  $images,
            'user'      =>  $user_name
        ]);
    }

}