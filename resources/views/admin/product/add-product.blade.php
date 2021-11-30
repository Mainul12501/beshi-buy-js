@extends('admin.master')
@section('title')
    Product
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Product Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="{{route('home')}}" class="text-muted">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('manage-product')}}" class="text-warning">Mange Product</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
            <div class="col-12 mx-auto mt-4">
                    <div id="errorMsgClose">
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
                    <div class="card  border">
                        <div class="card-header bg-dark text-white font-14" >Product Info </div>
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

                            <form action="{{route('new-product')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="category_id">Category Name :</label>
                                        <div class="input-group">
                                            <select name="category_id" class="form-control pro-cat">
                                                <option value="" disabled selected>Select Category</option>
                                                @foreach($categories as $category)
                                                    <option
                                                        value="{{ $category->id }}">{{ $category->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-category')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="sub_category_id">SubCategory Name :</label>
                                        <div class="input-group">
                                            <select name="sub_category_id" class="form-control  pro-sub-cat subEmpty">
                                                <option value="" disabled selected>Select SubCategory</option>
                                                @foreach($sub_categories as $sub_category)
                                                    <option
                                                        value="{{ $sub_category->id }}">{{ $sub_category->sub_category_name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-subcategory')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="brand_id">Brand Name :</label>
                                        <div class="input-group">
                                            <select name="brand_id" class="form-control pro-brand emptyBrand">
                                                <option value="" disabled selected>Select Brand</option>
                                                @foreach($brands as $brand)
                                                    <option value="{{ $brand->id }}">{{ $brand->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-brand')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="name">Product Name :</label>
                                            <input type="text" name="name" class="form-control text-capitalize pro-name" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="code">Product Code :</label>
                                            <input type="text" name="code" class="form-control pro-code" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="unit_id">Unit Name :</label>
                                        <div class="input-group">
                                            <select name="unit_id" class="form-control" >
                                                <option value="" disabled selected>Select Unit</option>
                                                @foreach($units as $unit)
                                                    <option value="{{ $unit->id }}">{{ $unit->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-unit')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="model">Product Model <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="model" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="origin">Product Origin <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="origin" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="origin"> Serial/IMEI  <span class="text-warning">[optional]</span> : </label>
                                            <input type="text" name="serial_imei" class="form-control" value="{{old('serial_imei')}}" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="origin">Product Weight <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="weight" class="form-control" />
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_color_id">Select Multiple Color :</label>
                                            <select name="product_color_id[]" class="select2 form-control" multiple="multiple"  style="width: 100%;">
                                                @foreach($colors as $color)
                                                    <option value="{{$color->id}}">{{$color->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_size_id">Select Multiple Size :</label>
                                            <select name="product_size_id[]" class="select2 form-control" multiple="multiple"  style="width: 100%;">
                                                @foreach($sizes as $size)
                                                    <option value="{{ $size->id }}">{{ $size->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="short_description">Short Description :</label>
                                            <textarea class="form-control" name="short_description"  style="height: 100px"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="long_description"> Long Description :</label>
                                            <textarea class="form-control" id="editor" name="long_description"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="image">Main Image <span class="text-warning">[optional]</span> :</label>
                                            <input type="file" class="form-control-file" name="image"   accept="image/*" />
                                            <span class="text-danger font-12">Only support jpg/jpeg/webp image file.</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="sub_image">SubImage <span class="text-warning">[optional]</span> : </label>
                                            <input type="file" name="sub_image[]" class="form-control-file" multiple accept="image/*"/>
                                            <span class="text-danger font-12">Only support jpg/jpeg/webp image file.</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="origin">Video URL <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="video_url" class="form-control" placeholder="Enter video url"  />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group m-t-15">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Create" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
