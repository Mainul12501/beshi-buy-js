@extends('admin.master')
@section('title')
    Site Error Message
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Site Error Message Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Site Error Message</li>
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
                            Site Error Message Info
                            <a href="{{route('manage-error-message')}}" class="btn btn-outline-info float-right">Manage Site Error Message</a>
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

                            <form action="{{route('new-error-message')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="pending_msg">Pending Error Message :</label>
                                    <textarea  class="form-control" name="pending_msg" style="height: 100px"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="status">Publication Status</label>
                                    <div class="">
                                        <input type="radio" name="status" checked value="1"/> Published
                                        <input type="radio" name="status" value="0"/> Unpublished
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Create Error Message" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
