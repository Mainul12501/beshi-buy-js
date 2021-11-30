@extends('admin.master')
@section('title')
    Manage Site Error Message
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Site Error Message Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage Site Error Message</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- File export -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">All Site Error Message List</a>
                            <a href="{{route('add-error-message')}}" class="btn btn-outline-info float-right">Create Site Error Message</a>
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
                            <div class="table-responsive">
                                <table class="table table-bordered" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Error Messages</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($errorMsgs as $errorMsg)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$errorMsg->pending_msg}}</td>
                                            <td>{{$errorMsg->status == 1 ? 'Active' : 'Inactive'}}</td>

                                            <td>
                                                @if($errorMsg->status == 1)
                                                    <a href="{{route('status-error-message',['id'=>$errorMsg->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($errorMsg->status == 0)
                                                    <a href="{{route('status-error-message',['id'=>$errorMsg->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
                                                
                                                <a href="{{route('delete-error-message',['id'=>$errorMsg->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
