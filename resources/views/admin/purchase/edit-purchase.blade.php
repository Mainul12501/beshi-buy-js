@extends('admin.master')
@section('title')
   Edit Purchase
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Purchase Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-purchase')}}" class="text-warning">Create</a>
                                </li>
                                <li class="breadcrumb-item " aria-current="page">
                                    <a href="{{route('purchase-list')}}" class="text-warning">Purchase List</a>
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
                        <div class="card-header bg-dark text-white" >Update Purchase Info</div>
                        <div class="card-body">
                            <div class="card-text text-center">
                                @if($message = Session::get('message'))
                                    <div class="alert alert-success alert-dismissible fade show py-2 font-16" role="alert">
                                        {{ $message }}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                @endif
                            </div>
                            <form action="{{route('update-purchase')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$purchase->id}}" class="form-control"/>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="purchase_date">Purchase Date :</label>
                                            <input type="text" name="purchase_date" class="form-control"  value="{{$purchase->purchase_date}}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="voucher_no">Voucher No :</label>
                                            <input type="text" name="voucher_no" class="form-control" value="{{$purchase->voucher_no}}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="supplier_id">Supplier/Vendor Name :</label>
                                        <div class="form-group">
                                            <select name="supplier_id" class="form-control" >
                                                <option value="" disabled selected>Select Supplier</option>
                                                @foreach($suppliers as $supplier)
                                                    <option value="{{ $supplier->id }}" {{$purchase->supplier_id == $supplier->id ? 'selected' : ''}}>{{ $supplier->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="product_id">Product Name :</label>
                                        <div class="form-group">
                                            <select name="product_id" class="form-control proEmpty" id="purProduct">
                                                <option value="" disabled selected>Select Product</option>
                                                @foreach($products as $product)
                                                    <option value="{{ $product->id }}" {{$product->id == $purchase->product_id ?'selected' :''}}>{{ $product->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px">




                                </div>
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-md-3">
                                        <div class="form-group codeEmpty">
                                            <label for="vp_code">Vendor P.Code <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="vp_code" class="form-control" id="vpCode" value="{{$purchase->vp_code}}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="size_id">Product Size :</label>
                                        <div class="form-group">
                                            <select name="size_id" class="form-control sizeEmpty" id="purSizeId">
                                                <option value="" disabled selected>Select Size</option>
                                                @foreach($sizes as $size)
                                                    <option value="{{ $size->id }}" {{$purchase->size_id == $size->id ? 'selected' : ''}} >{{ $size->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="color_id">Product Color :</label>
                                        <div class="form-group">
                                            <select name="color_id" class="form-control colorEmpty" id="purColor" >
                                                <option value="" disabled selected>Select Color</option>
                                                @foreach($colors as $color)
                                                    <option value="{{ $color->id }}" {{$purchase->color_id == $color->id ? 'selected' : ''}} >{{ $color->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="unit_id">Unit Name :</label>
                                        <div class="form-group">
                                            <select name="unit_id" class="form-control">
                                                <option value="" disabled selected>Select Unit</option>
                                                @foreach($units as $unit)
                                                    <option value="{{ $unit->id }}" {{$purchase->unit_id == $unit->id ? 'selected' : ''}}  >{{ $unit->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="unit_price"> Unit Price [Tk.]:</label>
                                            <input type="number"  class="form-control edit-up" name="unit_price" value="{{$purchase->unit_price}}" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="total_qty">Total Qty [Pcs] :</label>
                                            <input type="number" class="form-control edit-tq"  name="total_qty"  value="{{$purchase->total_qty}}" />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="addt_cost">Total Additional Cost [Tk.] : </label>
                                            <input type="number" class="form-control addt-cost" name="addt_cost"  value="{{$purchase->addt_cost}}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="profit">Profit [%] : </label>
                                            <input type="number" class="form-control edit-pf" name="profit" value="{{ $purchase->profit}}"/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="vat">Vat [%] :</label>
                                            <input type="number" class="form-control edit-vat" name="vat" value="{{ $purchase->vat }}"/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="discount">Discount [%]  <span class="text-warning">[optional]</span> :</label>
                                            <input type="number" name="discount"  class="form-control edit-dis"  value="{{$purchase->discount}}" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row"  style="margin-top: 15px">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="commission">Commission [%]  <span class="text-warning">[optional]</span> :</label>
                                            <input type="number" name="commission"  class="form-control"  value="{{$purchase->commission}}" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="sell_price">Sell Price [Tk.] :</label>
                                            <input type="number" class="form-control edit-psp" name="sell_price" value="{{$purchase->sell_price}}"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="regular_price">Regular Price [Tk.] <span class="text-warning">[optional]</span>:</label>
                                            <input type="number" name="regular_price"  class="form-control edit-rp" value="{{$purchase->regular_price}}"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="store_type">Store Type :</label><br/>
                                            <input type="radio" name="store_type" class="pro-store" {{$purchase->store_type == 0 ? 'checked' :''}} value="0"/> Self
                                            <input type="radio" name="store_type" class="pro-store ml-3" {{$purchase->store_type == 1 ? 'checked' :''}} value="1"/> Reseller
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group mt-3">
                                            <input type="submit" class="btn btn-outline-dark btn-block " value="Update"/>
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

