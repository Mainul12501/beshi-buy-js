@extends('admin.master')
@section('title')
    Manage Product Qr Code
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Qr Code Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage Product Qr Code</li>
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
                            <a class="text-primary font-20">All Product Qr Code List</a>
                            <a href="{{route('add-product-QRcode')}}" class="btn btn-outline-info float-right">Add QR Code of product</a>
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
                                        <th>Category Name</th>
                                        <th>Sub Category Name</th>
                                        <th>Product Name</th>
                                        <th>Code</th>
                                        <th>Supplier Name</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($productQrCodes as $productQrCode)
                                      <?php
                                          $category     = \App\Models\Category::find($productQrCode->category_id);
                                          $subCategory  = \App\Models\SubCategory::find($productQrCode->sub_category_id);
                                          $product      = \App\Models\Product::find($productQrCode->product_id);
                                      ?>
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$category->name}}</td>
                                            <td>{{$subCategory->sub_category_name}}</td>
                                            <td>{{$product->name}}</td>

                                            <td>{{$productQrCode->code}}</td>
                                            <td>
                                                <?php
                                                $supplierName   = \App\Models\Supplier::where('code', $productQrCode->supplier_code)->first();
                                                //                                            select('name')->first();
                                                    echo $supplierName->name;
                                                ?>
                                            </td>

                                            <td>
                                                {{--@if($productQrCode->status == 1)--}}
                                                    {{--<a href="{{route('inactive-product',['id'=>$productQrCode->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>--}}
                                                {{--@elseif($productQrCode->status == 0)--}}
                                                    {{--<a href="{{route('active-product',['id'=>$productQrCode->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>--}}
                                                {{--@endif--}}
{{--                                                <a href="{{route('edit-product',['id'=>$product->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>--}}
                                                <a href="{{route('delete-product-QRcode',['id'=>$productQrCode->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
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
