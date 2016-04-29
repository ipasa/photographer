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

    public function canFollow($request, $response, $args)
    {
        $authUserId =   $_SESSION['user'];;
        $users      =   User::all();
        /**
         * Looping for the perfect User
         *
         * @return \Illuminate\Http\Response
         */
        //for($i=1;$i<=10;$i++){
        foreach($users as $user){
            $i  =   $user->id;
            $user_name  =   $user->name;
            $favoritesA = DB::table('favorites')->where('user_id', $i)->count();
            $favoritesB = DB::table('favorites')->where('user_id', $authUserId)->count();
            $favoritesAlist = DB::table('favorites')->select('image_id')->where('user_id',$i)->lists('image_id');
            $favoritesAintersetB = DB::table('favorites')
                ->where('user_id', $authUserId)
                ->whereIn('image_id',$favoritesAlist)
                ->count();
            //dd($favoritesB);
            //Calculation of lift
            $liftAofB   =   $favoritesAintersetB/sqrt($favoritesB*$favoritesA);
            if($user->isFollowedBy($user->id)){
                $status     =   'Followed';
            }
            else
                $status     =   'Not Followed';
            if($liftAofB>0.2){
                $items[] = array(
                    'user_id'       =>  $i,
                    'user_name'     =>  $user_name,
                    'co-efficient'  =>  $liftAofB,
                    'status'        =>  $status
                );
            }
        }
        function array_sort($array, $on, $order=SORT_ASC)
        {
            $new_array = array();
            $sortable_array = array();
            if (count($array) > 0) {
                foreach ($array as $k => $v) {
                    if (is_array($v)) {
                        foreach ($v as $k2 => $v2) {
                            if ($k2 == $on) {
                                $sortable_array[$k] = $v2;
                            }
                        }
                    } else {
                        $sortable_array[$k] = $v;
                    }
                }
                switch ($order) {
                    case SORT_ASC:
                        asort($sortable_array);
                        break;
                    case SORT_DESC:
                        arsort($sortable_array);
                        break;
                }
                foreach ($sortable_array as $k => $v) {
                    $new_array[$k] = $array[$k];
                }
            }
            return $new_array;
        }
        $items = array_sort($items, 'co-efficient', SORT_DESC);

        return $this->view->render($response, 'profile/canfollow.twig',[
            'items'    =>  $items
        ]);

    }

}
