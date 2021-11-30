<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Subscriber;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Session;

class ProfileController extends Controller
{
    public function userRegister(){
        if(isset(Auth::user()->id))
        {
            if(Auth::user()->id)
            {
                return redirect('/')->with('msg', 'You are already logged in.');
            }
        } else {
            Session::put('registerRedirect', URL::previous());
            return view('front.login.register');    
        }
         
        
    }
    protected function registerValidation($request){
        $this->validate($request,[
            'name'      =>'required|max:255',
            'email'     =>'required|email|unique:users',
            'password'  => 'required',
            'phone'     =>'required|regex:/(01)[0-9]{9}/|max:11|unique:users',
        ]);
    }
    public function processToRegister(Request $request){
        $this->registerValidation($request);
        $user =  User::registerBasicInfo($request);
       if(!empty($user)){
           Auth::login($user);
           return redirect(Session::get('registerRedirect'))->with(['msg'=>'Welcome !! you are logged in . ','alert-type'=>'success']);
       }else{
           return redirect()->back();
       }

    }

    public function mailCheck($email){
        $user   =   User::where('email',$email)->first();
        $message   = '';
        if($user){
            $message = 'Email already Exist !! Please use another email .';
        }else{
            $message = 'Email is available';
        }
        return json_encode($message);
    }

    public function checkPhoneNumber($phone){
        $user = User::where('phone',$phone)->first();
        $message   = '';
        if($user){
            $message = 'Phone number already Exist !! Please use another number.';
        }else{
            $message = 'Phone number is available';
        }
        return json_encode($message);
    }
    public function userLogin(){
        if(isset(Auth::user()->id))
        {
            if(Auth::user()->id)
            {
                return redirect('/')->with('msg', 'You are already logged in.');   
            } 
        } else{
                Session::put('loginRedirect', URL::previous());
                return view('front.login.login');   
            }
        
         
        // return view('front.login.login');
    }
    
    public function processToLogin(Request $request){
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);
        $inputVal = $request->all();

        if(auth()->attempt(['email' => $inputVal['email'], 'password' => $inputVal['password'] ]) || auth()->attempt(['phone' => $inputVal['email'], 'password' => $inputVal['password'] ]))
        {
           if (auth()->user()->normal_user != 1)
            {
                Auth::logout();
                return redirect()->route('user-login')->with('message', 'Please login from admin login page.');


//                $request->session()->invalidate();
//
//                $request->session()->regenerateToken();
//
//
//                return $request->wantsJson()
//                    ? new Response('', 204)
//                    : redirect()->route('user-login')->with('message', 'Please login from admin login page.');

            } else {
                if(auth()->user()->normal_user == 1){
//                return redirect('/');
                    return redirect(Session::get('loginRedirect'));
                }
                else{
                    return redirect()->route('user-login')->with('message','email or password are not match.');
                }
            }
        }else{
            return redirect()->route('user-login')->with('message','email or password are not match.');
        }

    }
    public function createSubscriber(Request $request){
      
         $subscriber = Subscriber::where('email',$request->email)->first();
         
        if($subscriber){
            return redirect('/')->with(['msg'=>'Email already exist ? please try another .','alert-type'=>'warning']);
        }else{
            $subscriber         =   new Subscriber();
            $subscriber->email  =   $request->email;
            $subscriber->save();
            return redirect('/')->with(['msg'=>'Thanks for subscriber us . ','alert-type'=>'success']);
        }

    }

}
