<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Laravel\Socialite\Facades\Socialite;

class LoginWithSocialSiteController extends Controller
{
    //
    //    login with social sites

    protected $providers = [
        'github','facebook','google','twitter', 'linkedin'
    ];

    protected function sendSuccessResponse()
    {
        return redirect()->intended('/');

    }

    protected function sendFailedResponse($msg = null)
    {
        return redirect()->route('user-login')
            ->withErrors(['msg' => $msg ?: 'Unable to login, try with another provider to login.']);
    }

    private function isProviderAllowed($driver)
    {
        return in_array($driver, $this->providers) && config()->has("services.{$driver}");
    }

    protected function loginOrCreateAccount($providerUser, $driver) {

        // check for already has account
        $user = User::where('email', $providerUser->getEmail())->first();

//        return $user;

// if user already found
        if( $user ) {
            // update the avatar and provider that might have changed
            $user->update([
                'image' => $providerUser->avatar,
                'provider' => $driver,
                'provider_id' => $providerUser->id,
                'access_token' => $providerUser->token
            ]);
        } else {
            if($providerUser->getEmail()){ //Check email exists or not. If exists create a new user
                $user = User::create([
                    'name' => $providerUser->getName(),
                    'email' => $providerUser->getEmail(),
                    'image' => $providerUser->getAvatar(),
                    'provider' => $driver,
                    'provider_id' => $providerUser->getId(),
                    'access_token' => $providerUser->token,
                    'password' => '' // user can use reset password to create a password

                ]);

            }else{

                //Show message here what you want to show

            }
        }

        // login the user
        Auth::login($user, true);
        return $this->sendSuccessResponse();
    }

    public function redirectToProvider($driver)
    {
        if( ! $this->isProviderAllowed($driver) ) {
            return $this->sendFailedResponse("{$driver} is not currently supported");
        }

        try {
            return Socialite::driver($driver)->redirect();
        } catch (Exception $e) {
            // You should show something simple fail message
            return $this->sendFailedResponse($e->getMessage());
        }
    }

    public function handleProviderCallback( $driver )
    {
        // check return data

        // $user = Socialite::with($driver)->stateless()->user();
        // dd($user);
        // exit();
        
        try {
            $user = Socialite::driver($driver)->stateless()->user();
        } catch (Exception $e) {
            return $this->sendFailedResponse($e->getMessage());
        }

//        return $user;

        // check for email in returned user
        return empty( $user->email )
            ? $this->sendFailedResponse("No email id returned from {$driver} provider.")
            : $this->loginOrCreateAccount($user, $driver);
    }

}
