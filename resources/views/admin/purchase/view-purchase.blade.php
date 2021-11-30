@extends('admin.master')
@section('title')
    View Purchase
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Purchase Module</h4>
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
                                <li class="breadcrumb-item" aria-current="page">
                                    <a href="{{route('purchase-list')}}" class="text-warning">Purchase List</a>
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
                <div class="col-12">
                    <div class="card">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">View Purchase Details</a>
                            <a class="float-right text-success">Total : <span class="text-danger font-16 ml-1">{{ $purchases->count()}} </span>Nos.</a>
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
                                        <th title="product code">PC</th>
                                        <th title="product name">PN</th>
                                        <th title="supplier name">SN</th>
                                        <th title="vendor product code">VPC</th>
                                        <th title="origin">OR</th>
                                        <th>Model</th>
                                        <th>Size</th>
                                        <th>Color</th>
                                        <th title="store type">S.type</th>
                                        <th>Qty [pcs]</th>
                                        <th title="per qty. rate">Rate [Tk.]</th>
                                        <th>Total [Tk.] </th>
                                    </tr>
                                    </thead>
                                    @php($sum=0)
                                    <tbody >
                                        @foreach($purchases as $key=>$purchase)
                                         <?php
                                             $product   =   \App\Models\Product::findOrFail($purchase->product_id);
                                             $supplier  =   \App\Models\Supplier::findOrFail($purchase->supplier_id);
                                             $size      =   \App\Models\Size::findOrFail($purchase->size_id);
                                             $color     =   \App\Models\Color::findOrFail($purchase->color_id);
                                         ?>
                                         <tr>
                                             <td>{{$purchase->purchase_date}}</td>
                                             <td>{{$product->code}}</td>
                                             <td>{{$product->name}}</td>
                                             <td>{{$supplier->name}}</td>
                                             <td>{{$purchase->vp_code ? $purchase->vp_code : 'N/A'}}</td>
                                             <td>{{$product->origin ? $product->origin : 'N/A'}}</td>
                                             <td>{{$product->model ? $product->model : 'N/A'}}</td>
                                             <td>{{$size->name}}</td>
                                             <td>{{$color->name}}</td>
                                             <td>{{$purchase->store_type == 0 ? 'Self' :'Reseller'}}</td>
                                             <td>{{$purchase->total_qty ? $purchase->total_qty : 'N/A'}}</td>
                                             <td>{{number_format($purchase->unit_price)}}</td>
                                             <td>{{$purchase->total_qty ? number_format($purchase->unit_price * $purchase->total_qty,2 ) : 'N/A'}}</td>
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
