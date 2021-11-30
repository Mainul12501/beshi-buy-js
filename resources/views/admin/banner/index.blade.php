@extends('admin.master')
@section('title')
    Banner List
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title"><i class="fas fa-check-circle font-20 mr-2  text-primary"></i>Banner Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('create')}}" class="text-warning">Create</a>
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
                            <a class="text-primary font-20">All Banners List</a>
                            <a href="{{route('create')}}" class="btn btn-outline-primary  float-right"><i class="mdi mdi-plus-circle mr-2"></i>Create</a>
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
                                <table class="table table-bordered " id="file_export">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Cat.Name</th>
                                        <th>Banner <br/>[Image]</th>
                                        <th>Cat.Wise <br/>[Banner]</th>
                                        <th>Status<br/>[0 to 3]</th>
                                        <th style="width: 50px;" class="text-center">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($banners as $key=>$banner)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>@foreach($categories as $category){{$banner->category_id ==$category->id? $category->name:'' }}@endforeach</td>

                                            <td><img src="{{$banner->image }}" style="width: 80px;height: 45px"/></td>
                                            <td>{{$banner->serial}}</td>
                                            <td>{{$banner->status}}</td>
                                            <td>
                                                @if($banner->serial > 0)
                                                    <a href="{{route('banner-style',['id'=>$banner->id])}}" title="cat wise" class="btn btn-info btn-sm"><i class="fas fa-arrow-up"></i></a>
                                                @else
                                                    <a href="{{route('banner-style',['id'=>$banner->id])}}" title="cat wise" class="btn btn-warning btn-sm"><i class="fas fa-arrow-down"></i></a>
                                                @endif
                                                @if($banner->status >0)
                                                <a href="{{route('banner-status',['id'=>$banner->id])}}" class="btn btn-success btn-sm" title="status"><i class="fas fa-arrow-up"></i></a>
                                                @else
                                                    <a href="{{route('banner-status',['id'=>$banner->id])}}" class="btn btn-warning btn-sm" title="status"><i class="fas fa-arrow-down"></i></a>
                                                @endif
                                                <a href="{{route('edit-banner',['id'=>$banner->id])}}" class="btn btn-outline-primary btn-sm" title="edit"><i class="fas fa-edit"></i></a>
                                                 <form action="{{route('delete-banner',['id'=>$banner->id])}}" method="POST" class="d-inline">
                                                        @csrf @method('DELETE')
                                                        <button type="submit" class="btn btn-outline-danger btn-sm" onclick="return confirm('Are you sure ... ?? want to delete this !!.')"><i class="fas fa-trash"></i></button>
                                                 </form>
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
