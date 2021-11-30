<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'phone', 'password','image','provider', 'provider_id', 'access_token', 'is_admin', 'is_executive', 'normal_user', 'remember_token',
    ];

    public static function registerBasicInfo($request){
        $user           =   new User();
        $user->name     =   $request->name;
        $user->email    =   $request->email;
        $user->password =   bcrypt($request->password);
        $user->phone    =   $request->phone;
        $user->save();
        return $user;
    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
