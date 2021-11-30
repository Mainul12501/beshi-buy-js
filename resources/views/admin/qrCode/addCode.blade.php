@extends('admin.master')
@section('title')
    Product QR Code
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Product QR Code Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Product QR Code</li>
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
                            Product QR Code Info
                            <a href="{{route('manage-product-QRcode')}}" class="btn btn-outline-info float-right mr-2">Mange Product QR Code</a>
                            <!--<a href="{{route('manage-code-generate')}}" class="btn btn-outline-success float-right">Generate QR Code</a>-->
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

                            <form action="{{route('new-product-QRcode')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="category_id">Category Name :</label>
                                    <select name="category_id" class="form-control" id="categoryId"  style="height: 40px">
                                        <option value="" disabled selected>Select Category</option>
                                        @foreach($categories as $category)
                                            <option
                                                    value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_id">SubCategory Name :</label>
                                    <select name="sub_category_id" class="form-control subCategoryIds"  id="subCategoryId"  style="height: 40px">
                                        <option value="" disabled selected>Select SubCategory</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_id">Product Name :</label>
                                    <select name="product_id" class="form-control productIds" id="qrProductId"  style="height: 40px">
                                        <option value="" disabled selected>Select a product</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_id">Product Color :</label>
                                    <select name="color_name" class="form-control" id="colorId"  style="height: 40px">
                                        <option value="" disabled selected>Select a color</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_category_id">Product Size :</label>
                                    <select name="size_name" class="form-control" id="sizeId"  style="height: 40px">
                                        <option value="" disabled selected>Select a size</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="codes">Codes :</label>
                                    <select name="codes[]" class="select2 form-control qrcodeX" multiple="multiple"  style="width: 100%;height: 50px">
                                        <option value="" disabled >Select a Code</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="codes">Supplier Name :</label>
                                    <select name="supplier_id" class="form-control select2"   style="width: 100%;height: 50px">
                                        <option value="" disabled >Select a Supplier</option>
                                        @foreach($suppliers as $supplier)
                                            <option value="{{ $supplier->id }}" >{{ $supplier->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Add code to product" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
