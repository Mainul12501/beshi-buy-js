@extends('front.master')
@section('title')
    Contact Us
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
                            <li>Contact Us or Request Product</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <section class="">
        <div class="container bg-white py-5">
            <div class="row">
                <div class="col-12">
                    @if($message = Session::get('message'))
                        <div class="card">
                            <div class="card-body">
                                <div class="card-text text-center">
                                    <div class="alert alert-success alert-dismissible fade show py-2" role="alert">
                                        {{ $message }}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                    <div>
                        <h3 class="text-center f-s-22">Contact Us or Request for a Product</h3>
                    </div>
                    <div>
                        <p class="mt-4 text-justify f-s-17">We would like to receive your feedback about our site and any question or comment. Keep in contact wth us and feel free to express any opinion, viewpoint, suggestion or comment that you might have. Corporate Office</p>
                        <p class="mt-4 text-justify f-s-17">For product request, we will notify you by sending SMS or calling you as soon as we can manage your requested product.</p>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center py-4">
                                <span class="card-title pb-3">Physical Address</span>
                                <p class="card-text">Cha-65/A, 2nd floor,</p>
                                <p class="card-text">North Badda, Dhaka-1212 .</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body ">
                            <div class="text-center py-4">
                                <span class="card-title pb-3">Find Us on Internet</span>
                                <p class="card-text f-s-17"><span class="font-weight-bold">Email: </span><a href="mailto:support@relaxshobd.com" class="text-warning">support@relaxshobd.com</a></p>
                                <p class="card-text"><span class="font-weight-bold">Email: </span><a href="tel:123456">+123456</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="pb-2">
                        <h2 class="text-center f-s-19">Have any Suggestion or Product Request? Feel free to inform us:</h2>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div>
                                <form action="{{route('new-customer-contact')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label for="name">Your Name <span class="text-danger">*</span> :</label>
                                        <input type="text" class="form-control" name="name" placeholder="Name"  style="padding: 1.25rem" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="icon">Your Mobile Number :</label>
                                        <input type="number" placeholder="Phone or mobile Number" class="form-control" name="mobile"   style="padding: 1.25rem" />
                                    </div>
                                    <div class="form-group">
                                        <label for="icon">Your Email Address :</label>
                                        <input type="email" placeholder="Email" class="form-control" name="email"   style="padding: 1.25rem"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Your Message <span class="text-danger">*</span> :</label>
                                        <textarea  class="form-control" placeholder="Your message for us." name="description" required style="height: 100px"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="image">Product picture or screenshot  :</label>
                                        <input type="file" class="form-control-file" name="image[]" multiple accept="image/*" />
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Contact Us" />
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </section>



@endsection
