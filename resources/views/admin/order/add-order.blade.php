@extends('admin.master')
@section('title')
    Add Order
@endsection

@section('body')

    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Order Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('manage-order')}}"> Manage Order</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-dark text-white font-16 py-3" style="font-family:'Century Gothic';">Add Order Info [ Facebook & Physical ]</div>
                        <div class="card-body px-lg-5">
                            <div class="card-text text-center ">
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
                            <form action="{{route('new-order')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12"><strong class="text-success font-18">Customer Info :</strong></div>
                                </div>
                                <hr class="border-success border-bottom"/>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Name :</label>
                                            <input type="text" class="form-control" name="name"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Email :</label>
                                            <input type="email" class="form-control" name="email"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Phone :</label>
                                            <input type="text" class="form-control" name="phone"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="district">District :</label>
                                            <select name="district_id" class="form-control" >
                                                <option value="">Select District </option>
                                                @foreach($districts as $district)
                                                    <option value="{{ $district->id }}"> {{ $district->district_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="order_from">Ordered From :</label> <span class="text-danger">*</span>
                                            <select name="ordered_from" class="form-control" id="" required style="height: 3.33rem;">
                                                <option value="">Select Order Source Type</option>
                                                <option value="facebook"> Facebook</option>
                                                <option value="physically"> Physically</option>
                                                <option value="site"> Web Site</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address">Address :</label>
                                            <textarea  class="form-control" name="address"></textarea>
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
                                            <select name="product_id" class="form-control" id="productRetailPrice">
                                                <option value="">Select Product </option>
                                                @foreach($products as $product)
                                                    <option value="{{ $product->id }}"> {{ $product->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <!--<div class="col-md-6">-->
                                    <!--    <div class="form-group">-->
                                    <!--        <label for="custom_product">Custom Product :</label>-->
                                    <!--       <input type="text" name="custom_product" class="form-control" placeholder="Product name, out of our DB"/>-->
                                    <!--    </div>-->
                                    <!--</div>-->
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_size">Size :</label>
                                            <select name="product_size" class="form-control">
                                                <option value=""> Select Size </option>
                                                @foreach($sizes as $size)
                                                    <option value="{{ $size->name }}"> {{ $size->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="product_color">Color :</label>
                                            <select name="product_color" class="form-control">
                                                <option value=""> Select Color </option>
                                                @foreach($colors as $color)
                                                    <option value="{{ $color->name }}"> {{ $color->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="quantity">Quantity :</label>
                                            <input type="number" min="1" value="1" id="quantity" required name="product_quantity" class="form-control"/>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="code">P.Code :</label>
                                            <input type="text" name="code" class="form-control" disabled/>
                                        </div>

                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="sell_price">Sell Price (Taka) :</label>
                                            <input type="text" name="retail_price" class="form-control getTotalOrderAmount" id="retailPrice"/>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="supplier_id">Product Supplier :</label>
                                            <select name="supplier_id" class="form-control" id="">
                                                <option value="">Select Supplier </option>
                                                @foreach($suppliers as $supplier)
                                                    <option value="{{ $supplier->id }}"> {{ $supplier->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12 "><strong class="text-danger font-18">Payment Info :</strong></div>
                                </div>
                                <hr class="border-danger border-bottom"/>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label for="sell_date">Sell Date :</label>
                                            <input type="date" name="sell_date" class="form-control" required value="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Payment Method :</label> <span class="text-danger">*</span>
                                            <select name="vendor" class="form-control" id="" required>
                                                <option value="">Select Payment type</option>
                                                <option value="cash"> On Cash</option>
                                                <option value="bkash"> Bkash</option>
                                                <option value="rocket"> Rocket</option>
                                                <option value="nagad"> Nagad</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="txt_id">Transaction Id :</label>
                                            <input type="text" name="txt_id" class="form-control text-uppercase"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form_group">
                                            <label for="vendorPhone">Payment/Vendor Phone Number</label>
                                            <input type="text" class="form-control" name="vendor_phone" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Discount (Taka): </label>
                                            <input type="number" id="discount" min="0" value="0" name="discount" class="form-control getTotalOrderAmount" placeholder="Enter Discount Amount (if there is). "/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Delivery Charge (Taka) : </label>
                                            <input type="number" min="0" value="0" id="deliveryCharge" name="delivery_charge" class="form-control getTotalOrderAmount" placeholder="Enter Delivery Amount. "/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="order_total">Order Total (Taka):</label> <span class="text-danger">*</span>
                                            <input type="number" id="orderAmount" min="0" name="order_total" class="form-control" required placeholder="Total Order Amount" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="paid_amount">Paid Amount (Taka) :</label>
                                            <input type="number" min="0" placeholder="Customer Paid Amount" class="form-control" name="paid_amount" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="payment_collect">Payment Collected By : </label>
                                            <input type="text" name="payment_collect" class="form-control" placeholder="Enter Persons Name "/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Sells Person :</label>
                                            <input type="text" name="sell_person" class="form-control"  placeholder="Enter Sells Person Name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-outline-success btn-block font-18" value="Order Submit"/>
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
