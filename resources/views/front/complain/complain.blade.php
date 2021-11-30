@extends('front.master')
@section('title')
    Contact Us
@endsection
@section('body')



    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                        </div>
                    </div>
                    <div>
                        <h3 class="text-center f-s-22">Complain</h3>
                    </div>
                    <div>
                        <p class="mt-4 text-justify f-s-17">We would like to receive your feedback about our site and any question or comment. Keep in contact wth us and feel free to express any opinion, viewpoint, suggestion or comment that you might have. Corporate Office</p>
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
                                <p class="card-text"><span class="font-weight-bold">Email: </span><a href="mailto:info@relaxshobd.com">info@relaxshobd.com</a></p>
                                <p class="card-text"><span class="font-weight-bold">Email: </span><a href="tel:123456">+123456</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pb-5">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="pb-2">
                        <h2 class="text-center f-s-19">Have any complain against our product? Let us know by completing this form:</h2>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="card-text text-center">
                                @if($message = Session::get('message'))
                                    <div class="alert alert-success alert-dismissible fade show py-2" role="alert">
                                        {{ $message }}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                @endif
                            </div>
                            <div>
                                <form action="{{route('new-customer-complain')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label for="name">Client Name <span class="text-danger">*</span> :</label>
                                        <input type="text" class="form-control" name="name"  style="padding: 1.25rem" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="icon">Client Mobile Number <span class="text-danger">*</span> :</label>
                                        <input type="number"  class="form-control" name="mobile"   style="padding: 1.25rem" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="icon">Client Email Address :</label>
                                        <input type="email"  class="form-control" name="email"   style="padding: 1.25rem"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="icon">Product QR Code <span class="text-danger">*</span> :</label>
                                        <input type="text"  class="form-control" name="code"   style="padding: 1.25rem" required/>

                                    </div>
                                    <div class="form-group">
                                        <label for="description">Problem Description <span class="text-danger">*</span> :</label>
                                        <textarea  class="form-control" name="description" required style="height: 100px"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="image">QR Code Image :</label>
                                        <input type="file" class="form-control-file" name="image[]" multiple accept="image/*" />
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Create Complain" />
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
