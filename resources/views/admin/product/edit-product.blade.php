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
                                <li class="breadcrumb-item" aria-current="page">
                                    <a href="{{route('add-product')}}" class="text-warning">Create</a>
                                </li>
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
                <div class="col-md-12 mt-4">
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
                        <div class="card-header bg-dark text-white font-14">Update Info </div>
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
                            <form action="{{route('update-product')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$product->id}}"/>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="category_id">Category Name :</label>
                                        <div class="form-group">
                                            <select name="category_id" class="form-control pro-cat">
                                                <option value="" disabled selected>Select Category</option>
                                                @foreach($categories as $category)
                                                    <option
                                                        value="{{ $category->id }}" {{$product->category_id == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="sub_category_id">SubCategory Name :</label>
                                        <div class="form-group">
                                            <select name="sub_category_id" class="form-control pro-sub-cat subEmpty">
                                                <option value="" disabled selected>Select SubCategory</option>
                                                @foreach($sub_categories as $sub_category)
                                                    <option
                                                        value="{{ $sub_category->id }}" {{$product->sub_category_id == $sub_category->id ?'selected' :''}}>{{ $sub_category->sub_category_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="brand_id">Brand Name :</label>
                                        <div class="form-group">
                                            <select name="brand_id" class="form-control pro-brand emptyBrand">
                                                <option value="" disabled selected>Select Brand</option>
                                                @foreach($brands as $brand)
                                                    <option value="{{ $brand->id }}" {{$product->brand_id == $brand->id ? 'selected' : ''}}>{{ $brand->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="name">Product Name :</label>
                                            <input type="text" name="name" value="{{$product->name}}" class="form-control text-capitalize pro-name" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="code">Product Code :</label>
                                            <input type="text" name="code" value="{{$product->code}}" class="form-control pro-code" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="unit_id">Unit Name :</label>
                                        <div class="form-group">
                                            <select name="unit_id" class="form-control" >
                                                <option value="" disabled selected>Select Unit</option>
                                                @foreach($units as $unit)
                                                    <option value="{{ $unit->id }}" {{ $unit->id == $product->unit_id ? 'selected' : ''}}>{{ $unit->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="model">Product Model <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="model" value="{{$product->model}}" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="origin">Product Origin <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="origin" value="{{$product->origin}}" class="form-control" />
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
                                            <input type="text" name="weight" value="{{$product->weight}}" class="form-control" />
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_color_id">Select Multiple Color :</label>
                                            <select name="product_color_id[]" class="select2 form-control" multiple="multiple"  style="width: 100%;">
                                                @foreach($colors as $color)
                                                    <option value="{{$color->id}}" {{ in_array($color->id, $editColor) ? 'selected' : '' }}>{{$color->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_size_id">Select Multiple Size :</label>
                                            <select name="product_size_id[]" class="select2 form-control" multiple="multiple"  style="width: 100%;">
                                                @foreach($sizes as $size)
                                                    <option value="{{ $size->id }}" {{in_array($size->id ,$editSize) ? 'selected' :''}}>{{ $size->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="short_description">Short Description :</label>
                                            <textarea class="form-control" name="short_description" style="height: 100px">{{$product->short_description}}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="long_description"> Long Description :</label>
                                            <textarea class="form-control" id="editor" name="long_description"style="height: 150px">{!! $product->long_description !!}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="image">Main Image <span class="text-warning">[optional]</span> :</label>
                                            <input type="file" class="form-control-file" name="image"   accept="image/*" />
                                            <img src="{{asset($product->image)}}" style="height: 50px;height: 50px"/>
                                            <span class="text-danger font-12">Only support jpg/jpeg/webp image file.</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="sub_image">SubImage <span class="text-warning">[optional]</span> : </label>
                                            <input type="file" name="sub_image[]" class="form-control-file" multiple accept="image/*"/>
                                            @foreach($subImages as $subImage)
                                                @isset($subImage)
                                                    || <img src="{{asset($subImage->sub_image)}}" class="mt-2" style="width: 40px;height: 40px"/>
                                                @endisset
                                            @endforeach
                                            <span class="text-danger font-12">Only support jpg/jpeg/webp image file.</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="origin">Video URL <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="video_url" class="form-control" value="{{$product->video_url}}" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="status">Status : </label>
                                            <input type="radio" name="status" class="ml-2" {{$product->status == 1 ? 'checked' : ''}} value="1"/> active
                                            <input type="radio" name="status" class="ml-2" {{$product->status == 0 ? 'checked' : ''}} value="0"/> inactive
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group m-t-15">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Update"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
