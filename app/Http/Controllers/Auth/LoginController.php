<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }


    public function login(Request $request)
    {
       $inputVal = $request->all();

        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);

        if(auth()->attempt(['email' => $inputVal['email'], 'password' => $inputVal['password'] ]) || auth()->attempt(['phone' => $inputVal['email'], 'password' => $inputVal['password'] ])){
            
            $user   = User::find(Auth::user()->id);
            if ($user->normal_user != 1)
            {
                $user->status   = 1;
                $user->save();
            }

            if (auth()->user()->is_admin == 1) {
                return redirect()->route('admin');
            }elseif (auth()->user()->is_executive == 1){
                return redirect()->route('executive');
            } else {
                return redirect()->route('home');
            }
        }else{
            return redirect()->route('login')->with('error','Email or Password are incorrect.');

        }
    }







}
