<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PagesController extends Controller
{
    public function return ()
    {
        return view('front.policies.return');
    }
    public function delivery ()
    {
        return view('front.policies.delivery');
    }
    public function contact ()
    {
        return view('front.contact.contact');
    }
    public function complain ()
    {
        if (Auth::user())
        {
            return view('front.complain.complain');
        } else {
            return redirect()->route('user-login')->with('complainMsg', 'You must be logged in to submit a complain');
        }
    }
    public function redirect ()
    {
        return redirect(Session::get('loginRedirect'));
    }
}
