@extends('admin.master')
@section('title')
    Add Product Delivery
@endsection

@section('body')

    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Delivery Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('manage-product-delivery')}}"> Manage Product Delivery</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-text text-center py-2">
                            @if($message = Session::get('message'))
                                <div class="alert alert-success alert-dismissible fade show py-2" role="alert">
                                    {{ $message }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    @if($errors->count() == 1) {{$errors->first()}}
                                    @else
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    @endif
                                </div>
                            @endif
                        </div>
                        <div class="card-text p-3">
                            <a class="text-primary font-20">Orders Payment List</a>
                        </div>
                        <div class="card-body ">

                            <div class="" >
                                <table class="table table-bordered " id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Sell Date</th>
                                        <th>P. Name</th>
                                        <th>P. Size</th>
                                        <th>P. Color</th>
                                        <th>Quantity</th>
                                        <th>C.Name</th>
                                        <th>C. phone</th>
                                        <th>C. Address</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($orderDetails as $orderDetail)

                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{ $orderDetail->sell_date }}</td>
                                            <td>{{ $orderDetail->product_name }}</td>
                                            <td>{{ $orderDetail->product_size }}</td>
                                            <td>{{ $orderDetail->product_color }}</td>
                                            <td>{{ $orderDetail->product_quantity }}</td>
                                            <td>{{ $shipping->ship_name }}</td>
                                            <td>{{ $shipping->ship_phone }}</td>
                                            <td>{{ $shipping->ship_address }}</td>
                                            <td></td>
                                            <td>
                                                <a href="javascript:void(0)" onclick="showGetOrderDetails({{ $orderDetail->id }})">View</a>
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
            <br>
            <div class="row" id="showDeliveryForm">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-dark text-white font-16 py-3" style="font-family:'Century Gothic';">Add Product Delivery</div>
                        <div class="card-body px-lg-5">

                            <form action="{{route('new-product-delivery')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12"><strong class="text-success font-18">Customer Info :</strong></div>
                                </div>
                                <hr class="border-success border-bottom"/>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Name :</label>
                                            <input type="hidden" name="order_id" class="form-control" value="" id="orderId" />
                                            <input type="hidden" name="order_details_id" class="form-control" value="" id="orderDetailsId" />
                                            <input type="text" readonly class="form-control" name="customer_name" value="" id="customerName"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Email :</label>
                                            <input type="email" readonly class="form-control" name="customer_email" value="" id="customerEmail"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Phone :</label>
                                            <input type="text" readonly class="form-control" name="customer_phone" value="" id="customerPhone"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address">Address :</label>
                                            <textarea  class="form-control" readonly name="customer_address" id="customerAddress"></textarea>
                                        </div>
                                    </div>
                                </div>


                                <div class="row mt-3">
                                    <div class="col-md-12"><strong class="text-primary font-18">Product Info :</strong></div>
                                </div>
                                <hr class="border-primary border-bottom"/>
                                <div class="row mt-4">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_name">Product Name :</label>
                                            <input type="text" readonly name="product_name" class="form-control" value="" id="name" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="code">P.Code :</label>
                                            <input type="text" readonly name="product_code" class="form-control" id="productCode"/>
                                        </div>

                                    </div>

                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_size">Size :</label>
                                            <input type="text" readonly class="form-control" name="product_size" id="size" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_color">Color :</label>
                                            <input type="text" readonly name="product_color" class="form-control" value="" id="color" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="quantity">Quantity :</label>
                                            <input type="number" readonly id="quantity" name="product_quantity" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="supplier_id">Product Supplier :</label>
                                            <select name="supplier_id" required class="form-control" id="supplier">
                                                <option value="">Select Supplier </option>
                                                <option value="1">Rezaul</option>
                                                <option value="2">Kamrul</option>
                                                <option value="3">Mithu</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="quantity">Item Code :</label>
                                            <select name="item_code[]" id="itemCode" class="form-control select2" multiple="multiple" style="width: 100%;">
                                                <option value="">Select Item Code</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="code">Delivery Vendor :</label>
                                            <select name="delivery_vendor_id" id="deliveryVendor" class="form-control">
                                                <option value="">Select a vendor</option>
                                                <option value="1">Rezaul</option>
                                                <option value="2">Kamrul</option>
                                                <option value="3">Mithu</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="quantity">Report :</label>
                                            <textarea name="report" id="" cols="30" rows="2" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="code">status :</label><br>
                                            <input type="radio" value="1" name="status" checked> All ok &nbsp;
                                            <input type="radio" value="0" name="status"> Has Issue &nbsp;
                                        </div>

                                    </div>
                                </div>


                                <div class="row mt-4">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-outline-success btn-block font-18" value="Product Delivery Submit"/>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
