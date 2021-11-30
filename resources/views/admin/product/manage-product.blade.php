@extends('admin.master')
@section('title')
    Manage Product
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-product')}}" class="text-warning">Create</a>
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
                            <a class="text-primary font-20">All Products List</a>
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
                                <table class="table table-bordered font-12" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th title="category name">CN</th>
                                        <th title="product name">PN</th>
                                        <th title="product code">PC</th>
                                        <th>Model</th>
                                        <th>Image</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($products as $product)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$product->category->name}}</td>
                                            <td>{{Str::limit($product->name,20)}}</td>
                                            <td>{{$product->code}}</td>
                                            <td>{{$product->model ? $product->model : 'N/A'}}</td>
                                            <td><img src="{{asset($product->image ? $product->image : 'N/A')}}" style="height: 40px;width: 50px"/></td>
                                            <td>{{$product->status == 1 ? 'active' : 'inactive'}}</td>
                                            <td>
                                                @if($product->status == 1)
                                                    <a href="{{route('inactive-product',['id'=>$product->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($product->status == 0)
                                                    <a href="{{route('active-product',['id'=>$product->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
                                                <a href="{{route('edit-product',['id'=>$product->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="{{route('delete-product',['id'=>$product->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
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
