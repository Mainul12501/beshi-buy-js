<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
//        return view('admin.home.home');
        if (auth()->user()->is_admin ==1)
        {
            return view('admin.home.home');
        } else {
            return redirect('/');
        }

    }

    public function admin ()
    {
        return view('admin.home.home');
//        if (auth()->user()->is_admin ==1)
//        {
//            return view('admin.home.home');
//        } else {
//            return redirect('/');
//        }
    }
    public function executive ()
    {
        return view('admin.home.home');
    }


}
