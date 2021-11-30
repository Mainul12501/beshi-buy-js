@extends('admin.master')
@section('title')
    Manage Brand
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Brand Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-brand')}}" class="text-warning">Create</a>
                                </li>
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
                            <a class="text-primary font-20">All Brand List</a>
                        </div>
                        <div class="card-body">
                            <div class="card-text text-center">
                                @if($message = Session::get('message'))
                                    <div class="alert alert-danger alert-dismissible fade show py-2" role="alert">
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
                                        <th>Cat.Name</th>
                                        <th>B.Name</th>
                                        <th>Image</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($brands as $brand)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$brand->category->name}}</td>
                                            <td>{{$brand->name}}</td>
                                            <td>
                                                @isset($brand->image)
                                                    <img src="{{asset($brand->image)}}" style="height: 40px;width: 40px"/>
                                                    @else
                                                    <span class="text-danger">N/A</span>
                                                @endisset
                                            </td>

                                            <td>{{$brand->status == 1 ? 'Active' : 'Inactive'}}</td>

                                            <td>
                                                @if($brand->status == 1)
                                                    <a href="{{route('inactive-brand',['id'=>$brand->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($brand->status == 0)
                                                    <a href="{{route('active-brand',['id'=>$brand->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
                                                <a href="{{route('edit-brand',['id'=>$brand->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="{{route('delete-brand',['id'=>$brand->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure want to delete this..?? ')"><i class="fa fa-trash"></i></a>
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
