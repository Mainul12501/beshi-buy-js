@extends('admin.master')
@section('title')
    Sales List
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Sales Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
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
                           <a class="font-20 text-primary"> All Sales List</a>
                            <a href="{{route('sales-list')}}" class="btn btn-outline-primary  float-right">Refresh</a>
                        </div>
                        <div class="card-body">
                            <p class="text-center text-success">Total : <span class="text-danger font-16 ml-1">{{$orders->count()}} </span>Nos.</p>
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
                                        <th>Date</th>
                                        <th title="customer name">CN</th>
                                        <th title="product name">PN</th>
                                        <th title="product code">PC</th>
                                        <th title="quantity">Qty [pcs]</th>
                                        <th title="quantity">SP [Tk.]</th>
                                        <th title="total amount">Total [Tk.]</th>
                                        <th title="purchase price">PP [Tk.]</th>
                                        <th title="profit">Profit [Tk.]</th>
                                        <th title="total profit amount">TPA [Tk.]</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    @php($sum = '')
                                        @foreach($orders as $order)
                                            <?php
                                                $customer        =   \App\Models\Customer::findOrFail($order->customer_id);
                                                $orderDetails    =   \App\Models\OrderDetail::where('order_id',$order->id)->get();

                                                foreach ($orderDetails as $orderDetail){
                                                    $product     =   \App\Models\Product::findOrFail($orderDetail->product_id);
                                                    $purchase    =   \App\Models\Purchase::where('product_id',$orderDetail->product_id)->first();
                                                }
                                            ?>
                                          <tr>
                                              <td>{{$order->updated_at->format('Y-m-d')}}</td>
                                              <td>{{$customer->name}}</td>
                                              <td>{{$product->name}}</td>
                                              <td>{{$product->code}}</td>
                                              <td>{{$orderDetail->product_quantity}}</td>
                                              <td>{{number_format($orderDetail->total_amount)}}</td>
                                              <td>{{number_format($orderDetail->total_amount * $orderDetail->product_quantity)}}</td>
                                              <td>{{$purchase->unit_price ?? 'N/A'}}</td>
                                              <td>{{isset($purchase->unit_price )? number_format( $sum = $orderDetail->total_amount -$purchase->unit_price) : ''}}</td>
                                              <td>{{isset($purchase->unit_price )? number_format($orderDetail->product_quantity * $sum) : ''}}</td>
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
