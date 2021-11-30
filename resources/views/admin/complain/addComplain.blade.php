@extends('admin.master')
@section('title')
    Customer Complain
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Customer Complain Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Complain</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="card  border">
                        <div class="card-header bg-dark text-white font-16" style="font-family:'Century Gothic';padding: 10px">
                            Category Info
                            <a href="{{route('manage-customer-complain')}}" class="btn btn-outline-info float-right">Manage Customer Complain</a>
                        </div>
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

                            <form action="{{route('new-customer-complain')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Client Name :</label>
                                    <input type="text" class="form-control" name="name"  style="padding: 1.25rem"/>
                                </div>
                                <div class="form-group">
                                    <label for="icon">Client Mobile Number :</label>
                                    <input type="text"  class="form-control" name="mobile"   style="padding: 1.25rem"/>
                                </div>
                                <div class="form-group">
                                    <label for="icon">Client Email Address :</label>
                                    <input type="email"  class="form-control" name="email"   style="padding: 1.25rem"/>
                                </div>
                                <div class="form-group">
                                    <label for="icon">Product QR Code :</label>
                                    {{--<input type="text"  class="form-control" name="code"   style="padding: 1.25rem"/>--}}
                                    <select name="code" class="form-control select2" id="" style="width: 100%;height: 50px">
                                        <option value="" disabled selected>Select a Code</option>
                                        <?php
                                            $qrCodes    = \App\Models\GenerateQrCode::all();
                                        ?>
                                        @foreach($qrCodes as $qrCode)
                                            <option value="{{ $qrCode->code }}" >{{ $qrCode->code }}</option>
                                        @endforeach

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="description">Problem Description :</label>
                                    <textarea  class="form-control" name="description" style="height: 100px"></textarea>
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
        </div>
    </div>
@endsection
