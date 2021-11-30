<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;

class UserController extends Controller
{

    public function manageUser(){
        $users = User::orderBy('id','desc')->get();
        return view('admin.user.manage-user',['users'=>$users]);
    }
    public function changeRole($id){
        $user = User::find($id);

        if ($user->is_executive == 0)
        {
            $user->is_executive = 1;
            $user->is_admin = 0;
            $user->save();
            return redirect()->back()->with('message','Admin Permission Successfully Done !!');
        } elseif ($user->is_admin == 0)
        {
            $user->is_executive = 0;
            $user->is_admin = 1;
            $user->save();
            return redirect()->back()->with('message','Admin Permission Successfully Done !!');
        }

        return redirect()->back();
    }

    public function deleteUser ($id)
    {
        $user = User::find($id);
        if ($user->is_admin != 1 )
        {
            $user->delete();
            return redirect()->back();
        } else {
            return redirect()->with('message','U cant remove an Admin, Idiot..');
        }


    }
}
