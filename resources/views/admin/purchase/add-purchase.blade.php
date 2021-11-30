@extends('admin.master')
@section('title')
    Purchase
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
                        <div class="card-header bg-dark text-white" >Purchase Info</div>
                        <div class="card-body">
                            <form action="{{route('new-purchase')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                     <div class="form-group">
                                            <label for="purchase_date">Purchase Date :</label>
                                            <input type="text" name="purchase_date" class="form-control only-date"  value="{{old('purchase_date')}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="voucher_no">Voucher No :</label>
                                            <input type="text" name="voucher_no" class="form-control vou-no" value="{{old('voucher_no')}}">
                                            <span  class="text-danger chk-no"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="supplier_id">Supplier/Vendor Name :</label>
                                        <div class="input-group">
                                            <select name="supplier_id" class="form-control" >
                                                <option value="" disabled selected>Select Supplier</option>
                                                @foreach($suppliers as $supplier)
                                                    <option value="{{ $supplier->id }}" {{old('supplier_id') == $supplier->id ? 'selected' : ''}}>{{ $supplier->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-supplier')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-md-4">
                                        <label for="product_id">Product Name :</label>
                                         <div class="input-group ">
                                          <select name="product_id" class="form-control proEmpty " id="purProduct">
                                                <option value="" disabled selected>Select Product</option>
                                                @foreach($products as $product)
                                                    <option value="{{ $product->id }}">{{ $product->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-product')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group codeEmpty">
                                            <label for="vp_code">Vendor P.Code <span class="text-warning">[optional]</span> :</label>
                                            <input type="text" name="vp_code" class="form-control"  placeholder="Enter vendor  product code ...">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="unit_id">Unit Name :</label>
                                        <div class="input-group">
                                            <select name="unit_id" class="form-control">
                                                <option value="" disabled selected>Select Unit</option>
                                                @foreach($units as $unit)
                                                    <option value="{{ $unit->id }}" {{old('unit_id') == $unit->id ? 'selected' : ''}}  >{{ $unit->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <a href="{{route('add-unit')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-md-4">
                                        <label for="size_id">Product Size :</label>
                                        <div class="input-group">
                                            <select name="size_id" class="form-control sizeEmpty">
                                                <option value="" disabled selected>Select Size</option>
                                                @foreach($sizes as $size)
                                                    <option value="{{ $size->id }}" {{old('size_id') == $size->id ? 'selected' : ''}} >{{ $size->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                               <a href="{{route('add-size')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                           </span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="color_id">Product Color :</label>
                                        <div class="input-group">
                                            <select name="color_id" class="form-control colorEmpty" >
                                                <option value="" disabled selected>Select Color</option>
                                                @foreach($colors as $color)
                                                    <option value="{{ $color->id }}" {{old('color_id') == $color->id ? 'selected' : ''}} >{{ $color->name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                               <a href="{{route('add-color')}}"  type="button" class="btn btn-outline-dark"> + </a>
                                           </span>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="store_type">Store Type <span class="text-warning">[ select type ] </span>:</label><br/>
                                            <input type="radio" name="store_type" class="pro-store" value="0" /> Self
                                            <input type="radio" name="store_type" class="pro-store ml-3" value="1" /> Reseller
                                        </div>
                                    </div>
                                </div>
                                <div class="hide-self" style="display: none">
                                    <div class="row" style="margin-top: 15px">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="unit_price"> Unit Price [Tk.]:</label>
                                                <input type="number"  class="form-control up" name="unit_price"  min="0" placeholder="Enter Price Rate" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="total_qty">Total Qty [Pcs] :</label>
                                                <input type="number" class="form-control tq"  name="total_qty"   min="0" placeholder="Enter Product Qty"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="trs_cost">Total Transport Cost [Tk.] : </label>
                                                <input type="number" class="form-control ttc" name="trs_cost" placeholder="Enter Transport Cost" min="0"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="mkt_cost">Marketing Cost [Tk.] <span class="text-warning">[optional]</span> :</label>
                                                <input type="number" class="form-control tmc" name="mkt_cost"  placeholder="Enter Total Marketing Cost" min="0"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 15px">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="others_cost">Total Others [Tk.] <span class="text-warning">[optional]</span> :</label>
                                                <input type="number" class="form-control toc" name="others_cost" placeholder="Enter Others Cost" min="0"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="profit">Profit [%] : </label>
                                                <input type="number" class="form-control pf" name="profit" min="0"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="vat">Vat [%] :</label>
                                                <input type="number" class="form-control vat" name="vat" min="0"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 15px">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="discount">Discount [%]  <span class="text-warning">[optional]</span> :</label>
                                                <input type="number" name="discount"  class="form-control dis"  min="0" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="sell_price">Sell Price [Tk.] :</label>
                                                <input type="number" class="form-control psp" name="sell_price" min="0"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="regular_price">Regular Price [Tk.] <span class="text-warning">[optional]</span>:</label>
                                                <input type="number" name="regular_price"  class="form-control rp" min="0"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="hide-reseller" style="display: none">
                                    <div class="row" style="margin-top: 15px">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="unit_price"> Unit Price [Tk.]:</label>
                                                <input type="number"  class="form-control" name="vend_price"  min="0" placeholder="Enter Price Rate"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="commission">commission [%] <span class="text-warning">[optional]</span>:</label>
                                                <input type="number" name="commission"  class="form-control" min="0"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="sell_price">Sell Price [Tk.] :</label>
                                                <input type="number" class="form-control"   name="pro_mrp" min="0" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: 30px">
                                    <input type="submit" class="btn btn-outline-dark btn-block text-uppercase" value="Save" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('extra-js')
    <script>
        $(document).ready(function () {
            var ttc     =   parseInt($('.ttc').val(0));
            var tmc     =   parseInt($('.tmc').val(0));
            var toc     =   parseInt($('.toc').val(0));
            var pf      =   parseInt($('.pf').val(0));
            var dc      =   parseInt($('.dc').val(0));
            var vat     =   parseInt($('.vat').val(0));
        })
    </script>
@endsection
