<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Capsule\Manager as DB;

class User extends Model{
    protected $fillable =   [
        'email', 'name', 'password'
    ];

    public function setPassword($pasword)
    {
        $this->update([
            'password' => password_hash($pasword, PASSWORD_DEFAULT)
        ]);
    }
    public function isFollowedBy($currentUserId)
    {
        $idsWhoOtherUserFollows =   DB::table('follows')->where('followed_id', $_SESSION['user'])->lists('follower_id');
        //dd($idsWhoOtherUserFollows);
        return in_array($this->id, $idsWhoOtherUserFollows);
    }
}