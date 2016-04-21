<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
}