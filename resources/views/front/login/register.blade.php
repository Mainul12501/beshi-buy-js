@extends('front.master')
@section('title')
User Register
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
                            <li> User / Register</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--breadcrumbs area end-->

    <!-- customer register start -->
    <div class="customer_login " style="margin: 100px 0px">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mx-auto ">
                    <div class="card">
{{--                        <div class="card-header bg-info text-white p-1">--}}
{{--                            <h3 class="ml-3"> Register </h3>--}}
{{--                        </div>--}}
                        <div class="card-body shadow">
                            <h2 class="font-weight-bold mb-4">Sign Up</h2>
                            <form action="{{route('new-register')}}" method="POST">
                                @csrf
                                <div class="form-group">
{{--                                    <label> Name :</label>--}}
                                    <input type="text" name="name" class="form-control" placeholder="Enter Name" style="height: 3em"/>
                                    <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                                </div>
                                <div class="form-group">
{{--                                    <label> Email :</label>--}}
                                    <input type="text" name="email" class="form-control" placeholder="Enter Valid Email" onblur="emailCheck(this.value)" style="height: 3em"/>
                                    <span class="text-danger error-email">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>
                                    <span class="text-success sucs-email"></span>
                                </div>
                                <div class="form-group">
{{--                                    <label> Password :</label>--}}
                                    <input type="password" name="password" class="form-control" placeholder="Enter Valid Password" style="height: 3em"/>
                                    <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : '' }}</span>

                                </div>
                                <div class="form-group">
{{--                                    <label> Mobile : </label>--}}
                                    <input type="number" name="phone" class="form-control" placeholder="01XXX . . . " onblur="phoneCheck(this.value)" style="height: 3em"/>
                                    <span class="text-danger error-phone">{{ $errors->has('phone') ? $errors->first('phone') : '' }}</span>
                                    <span class="text-success sucs-phone"></span>

                                </div>
                                <div class="form-group mb-0">
                                    <button type="submit" id="regBtn" class="btn btn-danger  btn-block" style="height: 2.5em">Register</button>
                                </div>
                            </form>
                            <p class="text-center text-justify f-s-16 mt-3">Already have an account? <a href="" class="font-weight-bold" id="logIn" style="color: orange"> Log in now</a></p>
                        </div>
                    </div>
                </div>
                <!--register area end-->
            </div>
        </div>
    </div>
    <!-- customer login end -->

@endsection
@section('extra-js')
    <script src="{{ asset('/') }}front/page-js/auth/register.js"></script>
@endsection

