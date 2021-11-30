@extends('admin.master')
@section('title')
    Banner
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
                                    <a href="{{route('index')}}" class="text-warning">Banner List </a>
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
                <div class="col-8 mx-auto mt-lg-3">
                    <div id="errorMsgClose" class="text-justify">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                @if($errors->count() == 1) {{$errors->first()}}
                                <p class="text-danger mt-2 ml-3">CLICK ME</p>
                                @else
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                    <p class="text-danger mt-2 ml-3">CLICK ME</p>
                                @endif
                            </div>
                        @endif
                    </div>
                    <div class="card">
                        <div class="card-header bg-dark text-white" > Banner Info </div>

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
                            <form action="{{route('store')}}" method="POST" class="form-horizontal" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="category_id"> Category Name  : </label>
                                    <select name="category_id" class="form-control">
                                        <option disabled selected>Select a Name </option>
                                        @foreach($categories as  $category)
                                            <option value="{{$category->id}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="category_id"> Product Name  : </label>
                                    <select name="product_url" class="form-control">
                                        <option disabled selected>Select a Product </option>
                                        @foreach($products as  $product)
                                            <option value="{{ url('/').'/product/'.$product->slug }}">{{$product->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="image"> Image  :  <span class="text-danger font-12">[ Only support jpg/jpeg/webp image file.]</span></label>
                                    <input type="file" class="form-control-file" name="image"   accept="image/*" />
                                </div>
                                <div class="form-group">
                                    <label for="image">  Publication Status  :  </label>
                                    <input type="radio" class="" name="publication_status" value="1" checked /> Active
                                    <input type="radio" class="" name="publication_status" value="0" /> Inactive
                                </div>
                                <div class="form-group mt-lg-4">
                                    <button type="submit" class="btn btn-outline-dark"><i class="fas fa-save mr-2"></i>Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
