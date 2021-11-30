@extends('admin.master')
@section('title')
    Stock List
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Stock Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-purchase')}}" class="text-warning">Create</a>
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
                <div class="col-8 mx-auto">
                    <div class="card">
                        <div class="card-body mx-auto">
                            <form action="#" method="POST" class="form-inline">
                                @csrf
                                <div class="form-group ">
                                    <label >From :</label>
                                    <input type="text" name="from" class="ml-2 form-control only-date"/>
                                </div>
                                <div class="form-group">
                                    <label class="ml-2">To :</label>
                                    <input type="text" name="to" class="ml-2 form-control only-date" />
                                </div>
                                <div class="form-group  ml-2">
                                    <button type="submit" class="btn btn-outline-success" >Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="card">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">All Stock List</a>
                            <a class="float-right text-success">Total : <span class="text-danger font-16 ml-1">{{ $stocks->count()}} </span>Nos.</a>
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
                                <table class="table table-bordered font-12" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th title="product name">P.name</th>
                                        <th title="product code">P.code</th>
                                        <th title="category name">C.name</th>
                                        <th title="supplier name">S.name</th>
                                        <th>Size</th>
                                        <th>Color</th>
                                        <th title="store type">S.type</th>
                                        <th>Stock [pcs]</th>
                                        <th title="sold qty">SQ [pcs]</th>
                                        <th title="balance qty">BQ [pcs]</th>
                                    </tr>
                                    </thead>
                                    <tbody id="allStockInfo">
                                        @foreach($stocks as $key=>$stock)
                                         <?php
                                           $purchase        =  \App\Models\Purchase::findOrFail($stock->purchase_id);
                                           $product         =  \App\Models\Product::findOrFail($purchase->product_id);
                                           $category        =  \App\Models\Category::findOrFail($product->category_id);
                                           $supplier        =  \App\Models\Supplier::findOrFail($purchase->supplier_id);
                                           $size            =   \App\Models\Size::findOrFail($purchase->size_id);
                                           $color           =   \App\Models\Color::findOrFail($purchase->color_id);

                                         ?>
                                         <tr>
                                             <td>{{$purchase->purchase_date}}</td>
                                             <td>{{$product->name}}</td>
                                             <td>{{$purchase->pro_code ?$purchase->pro_code: 'N/A' }}</td>
                                             <td>{{$category->name}}</td>
                                             <td>{{$supplier->name}}</td>
                                             <td>{{$size->name}}</td>
                                             <td>{{$color->name}}</td>
                                             <td>{{$purchase->store_type == 0 ? 'Self' : 'Reseller'}}</td>
                                             <td>{{$purchase->total_qty}}</td>
                                             <td>{{$product->sell_qty ? $product->sell_qty : 0}}</td>
                                             <td class="font-16 text-success font-weight-bold">{{$purchase->total_qty - $product->sell_qty}}</td>
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
    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Modal Heading</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <table class="table table-bordered font-12" id="file_export">
                        <thead>
                        <tr>
                            <td>Dt</td>
                            <td>P.name</td>
                            <td>P.code</td>
                            <td>S.name</td>
                            <td>Size</td>
                            <td>Color</td>
                            <td>qty</td>
                            <td>P.price</td>
                        </tr>
                        </thead>
                        <tbody id="stockViewInfo"></tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
