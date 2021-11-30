@extends('admin.master')
@section('title')
    Purchase List
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
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- File export -->
            <div class="row">
                <div class="col-7 mx-auto">
                    <div class="card">
                        <div class="card-body mx-auto">
                            <form action="{{route('date-wise-search')}}" method="POST" class="form-inline">
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
                        <div class="card-text p-3 ">
                           <a class="font-20 text-primary"> All Purchase List</a>
                            <a href="{{route('purchase-list')}}" class="btn btn-outline-primary  float-right">Refresh</a>
                        </div>
                        <div class="card-body">
                            <p class="text-center text-success">Total : <span class="text-danger font-16 ml-1">{{ $purchases->count()}} </span>Nos.</p>
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
                            <div class="table-responsive">
                                <table class="table table-bordered font-12" id="file_export">
                                    <thead>
                                    <tr>
                                        <!-- <th> # </th>-->
                                        <th>Date</th>
                                        <th title="product name">PN</th>
                                        <th title="product code">PC</th>
                                        <th title="supplier Name">SN</th>
                                        <th>Size</th>
                                        <th>Color</th>
                                        <th title="total qty">Qty</th>
                                        <th title="unit price">UP<br>[Tk.]</th>
                                        <th title="per unit additional cost ">Adc [Tk.]</th>
                                        <th title="profit">Pf [%] </th>
                                        <th>Vat [%] </th>
                                        <th>Dis [%] </th>
                                        <th title="commission">Comi [Tk.]</th>
                                        <th title="sales price">SP<br>[Tk.]</th>
                                        <th title="store type">S.type</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($purchases as $key=>$purchase)
                                            <?php
                                                $product    =   \App\Models\Product::findOrFail($purchase->product_id);
                                                $category   =   \App\Models\Category::findOrFail($product->category_id);
                                                $supplier   =   \App\Models\Supplier::findOrFail($purchase->supplier_id);
                                                $size       =   \App\Models\Size::findOrFail($purchase->size_id);
                                                $color      =   \App\Models\Color::findOrFail($purchase->color_id);
                                            ?>
                                        <tr>
                                            <!-- <td>{{$key++}}</td>-->
                                            <td>{{$purchase->purchase_date}}</td>
                                            <td>{{\Illuminate\Support\Str::limit($product->name,15)}}</td>
                                            <td>{{$product->code ? $product->code :'N/A'}}</td>
                                            <td>{{$supplier->name}}</td>
                                            <td>{{$size->name}}</td>
                                            <td>{{$color->name}}</td>
                                            <td>{{$purchase->total_qty ? $purchase->total_qty : 'N/A' }}</td>
                                            <td>{{number_format($purchase->unit_price) }}</td>
                                            <td>{{$purchase->addt_cost == 0 ? $purchase->addt_cost : round($purchase->addt_cost/$purchase->total_qty)}}</td>
                                            <td>{{$purchase->profit}}</td>
                                            <td>{{$purchase->vat ? $purchase->vat : 'N/A'}}</td>
                                            <td>{{$purchase->discount ? $purchase->discount : 'N/A'}}</td>
                                            <td>{{$purchase->commission ?number_format( round(($purchase->unit_price*$purchase->commission)/100)): 'N/A'}}</td>
                                            <td>{{number_format($purchase->sell_price)}}</td>
                                            <td>{{$purchase->store_type == 0 ? 'self' : 'reseller'}}</td>
                                            <td>
                                                <a href="{{route('view-purchase',['id'=>$product->id,'name'=>preg_replace('/\s+/u','-',trim($product->name))])}}" class="btn btn-outline-primary btn-sm" title="view"><i class="fas fa-eye"></i></a>
                                                <a href="{{route('edit-purchase',['id'=>$purchase->id,'name'=>preg_replace('/\s+/u','-',trim($product->name))])}}" class=" btn btn-outline-success btn-sm mt-1" title="edit"><i class="fas fa-edit"></i></a>
                                                <a href="{{route('delete-purchase',['id'=>$purchase->id,'name'=>preg_replace('/\s+/u','-',trim($product->name))])}}" class=" btn btn-outline-danger btn-sm mt-1" title="delete" onclick=" return confirm('Are you sure ?? you want to delete this ... ')"><i class="fas fa-trash"></i></a>
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
