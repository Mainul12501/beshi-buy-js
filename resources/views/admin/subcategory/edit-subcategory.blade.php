@extends('admin.master')
@section('title')
    SubCategory
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>SubCategory Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="{{route('home')}}" class="text-muted">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-subcategory')}}" class="text-warning">Create</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('manage-subcategory')}}" class="text-warning">Mange</a>
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
                      <div class="card  border">
                        <div class="card-header bg-dark text-white font-16">Update Info </div>
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

                            <form action="{{route('update-subcategory')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Category Name :</label>
                                    <select name="category_id" class="form-control" style="height:45px">
                                        <option value="" disabled  selected>Select Category</option>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}"{{$subCategory->category_id == $category->id ? 'selected' : ''}} >{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_name">SubCategory Name :</label>
                                    <input type="text" class="form-control" name="sub_category_name" value="{{$subCategory->sub_category_name}}"  style="padding: 1.25rem"/>
                                    <input type="hidden" name="id" value="{{$subCategory->id}}"/>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_description">Description :</label>
                                    <textarea  class="form-control" name="sub_category_description" style="height: 100px">{!! $subCategory->sub_category_description !!}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_image">Image :</label>
                                    <input type="file" class="form-control-file" name="sub_category_image" accept="image/*" />
                                    <img src="{{asset($subCategory->sub_category_image)}}" style="height: 50px;width:60px"/>
                                    <span class="text-danger font-12">Only support jpg/jpeg/webp image file.</span>
                                </div>
                                <div class="form-group">
                                    <label for="status">Status : </label>
                                    <input type="radio" name="status" class="ml-2" {{$subCategory->status == 1 ? 'checked' : ''}} value="1"/> Active
                                    <input type="radio" name="status" class="ml-2" {{$subCategory->status == 0 ? 'checked' : ''}} value="0"/> Inactive
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Update" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
