@extends('front.master')
@section('title')
    User Login
@endsection
@section('body')



    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{ route('/') }}">home</a></li>
                            <li> User / login</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!-- customer login start -->
    <div class="customer_login mt-60" style="margin-bottom: 130px">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <div class="card-text text-center ">
                        @if($message = Session::get('message'))
                            <div class="alert alert-warning alert-dismissible fade show " role="alert">
                                <strong class="text-primary font-20 py-2 ">  {{ $message }}</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                @foreach ($errors->all() as $error)
                                    <div>{{ $error }}</div>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="card shadow">
{{--                        <div class="card-header bg-success p-1" id="headingTwo">--}}
{{--                            <h3 class="text-white ml-2"> Login</h3>--}}
{{--                        </div>--}}
                        <div class="card-body">
                            <h2 class="font-weight-bold mb-4">Login</h2>
                            <form method="POST" action="{{route('new-user')}}">
                                @csrf
                                <div class="form-group">
{{--                                    <label for="email" class="col-form-label"> Email / Mobile : </label>--}}
                                    <input id="email" type="text" placeholder=" Email / Mobile" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email" autofocus style="height: 3em">
                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                         <strong>{{ $message }}</strong>
                                      </span>
                                    @enderror
                                </div>
                                <div class="form-group">
{{--                                    <label for="password" class=" col-form-label">Password : </label>--}}
                                    <input id="password" type="password" placeholder=" Password" class="form-control @error('password') is-invalid @enderror" name="password" autocomplete="current-password" style="height: 3em">
                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                       <strong>{{ $message }}</strong>
                                      </span>
                                    @enderror
                                </div>
                                <div class="form-group row mb-0">
                                    <div class="col-md-8">
                                        <button type="submit" class="btn btn-outline-danger px-4">
                                            {{ __('Login') }}
                                        </button>

                                        @if (Route::has('password.request'))
                                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                                {{ __('Forgot Your Password?') }}
                                            </a>
                                        @endif
                                    </div>
                                </div>
                            </form>
                            <div class="mb-1">
                                <p class="text-right f-s-17 text-justify mb-2">Don't Have an Account? <a href="" class="font-weight-bold" style="color: orange" id="signUp">Sign up now</a></p>
                            </div>

                            <div>
                                <a href="{{ route('social-oauth', 'facebook') }}" class="btn btn-primary pr-2 w-50 float-left" style="border-radius: 0px;">
                                    Login with Facebook
                                </a>
                                <a href="{{ route('social-oauth', 'google') }}" class="btn btn-danger pl-2  w-50 float-left" style="border-radius: 0px;">
                                    Login with Google
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- customer login end -->

@endsection

@section('extra-js')
    <script>
        $(document).on('click', '#signUp', function (){
            event.preventDefault();
            window.location.href    = baseurl+'user/register';
        })
    </script>
@endsection
