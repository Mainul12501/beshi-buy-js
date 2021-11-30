@extends('front.master')
@section('title')
 Register
@endsection
@section('body')

<!--breadcrumbs area start-->
<div class="breadcrumbs_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="{{route('/')}}">home</a></li>
                        <li class="text-primary">Register</li>
                        <li class="text-primary">Login</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs area end-->
<!-- customer login start -->
<!-- customer login start -->
<div class="customer_login mt-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mx-auto col-md-6">
                <div class="card-text text-center ">
                    @if($message = Session::get('message'))
                        <div class="alert alert-success alert-dismissible fade show " role="alert">
                            <strong class="text-primary font-20 py-2 ">  {{ $message }}</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="row">
            <!--register area start-->
            <div class="col-lg-6 mx-auto col-md-6 ">
                <div class="accordion shadow" id="accordionExample">
                    <div class="card">
                        <div class="card-header bg-success p-1" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed text-warning text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Already Register ? Click please Login .
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <form action="{{route('user-login')}}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label>Email / Phone :</label>
                                        <input type="text" class="form-control" name="email_or_phone" placeholder="Enter valid Email or Phone" required style="height: 3.5rem"/>

                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-dark col-lg-3 text-warning mb-2 " value="Login"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header bg-info p-0" id="headingOne">
                            <h2 class="text-white">
                                <button class="btn btn-link btn-block text-left text-white text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    New Customer ? Register.
                                </button>
                            </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <form action="{{route('new-register')}}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label> Name :</label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Name"/>
                                        <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                                    </div>
                                    <div class="form-group">
                                        <label> Email :</label>
                                        <input type="text" name="email" class="form-control" placeholder="Enter Valid Email" onblur="emailCheck(this.value)"/>
                                        <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>
                                        <span id="emailError" ></span>
                                    </div>
                                    <div class="form-group">
                                        <label> Phone :</label>
                                        <input type="number" name="phone" class="form-control" placeholder="Enter Valid Bangladeshi Mobile Number " onblur="phoneCheck(this.value)"/>
                                        <span class="text-danger">{{ $errors->has('phone') ? $errors->first('phone') : '' }}</span>
                                        <span id="phoneError" class="text-warning"></span>
                                    </div>
                                    <div class="form-group ">
                                        <button type="submit" id="regBtn" class="btn btn-dark text-warning btn-block">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection
