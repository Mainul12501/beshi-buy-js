@extends('admin.master')
@section('title')
    Order Details
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
                                <li class="breadcrumb-item">
                                    <a href="{{route('manage-order')}}">Manage Order</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Order Details</li>
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
                        <div class="card-header bg-info p-2" >
                            <h4 class="text-white ml-2">Order Basic Info</h4>
                        </div>
                        <div class="card-body ">
                            <table class="table table-bordered " id="file_export">
                                <thead>
                                <tr>
                                    <th>Order No</th>
                                    <th>Order Date</th>
                                    <th>Order Total</th>
                                    <th>Order Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><span>00</span>{{$order->id}}</td>
                                    <td>{{$order->created_at}}</td>
                                    <td>{{number_format($order->order_total,2)}}</td>
                                    <td>{{$order->order_status}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr/>
                    <div class="card">
                        <div class="card-header bg-success p-2">
                            <h4 class="text-white ml-2">Order Customer  Info</h4>
                        </div>
                        <div class="card-body ">
                            <table class="table table-bordered ">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>{{$customer->name}}</td>
                                    <td>{{$customer->email}}</td>
                                    <td>{{$customer->phone}}</td>
                                    <td>{{$customer->address}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr>
                    <div class="card">
                        <div class="card-header bg-warning p-2">
                            <h4 class="text-white ml-2">Order Shipping  Info</h4>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($shipping)
                                <tr>
                                    <td>{{$shipping->ship_name}}</td>
                                    <td>{{$shipping->ship_email}}</td>
                                    <td>{{$shipping->ship_phone}}</td>
                                    <td>{{$shipping->ship_address}}</td>
                                </tr>
                                 @else
                                    <tr>
                                        <td>{{$customer->name}}</td>
                                        <td>{{$customer->email}}</td>
                                        <td>{{$customer->phone}}</td>
                                        <td>{{$customer->address}}</td>
                                    </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr/>
                    <div class="card">
                        <div class="card-header bg-danger p-2">
                            <h4 class="text-white ml-2">Order Details  Info</h4>
                        </div>
                        <div class="card-body ">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Product Name</th>
                                    <th>Size</th>
                                    <th>Color</th>
                                    <th>Qty.</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                </tr>
                                </thead>
                                @php($i=1)
                                <tbody>
                                @foreach($orderDetails as $orderDetail)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$orderDetail->product_name}}</td>
                                    <td>{{$orderDetail->product_size}}</td>
                                    <td>{{$orderDetail->product_color}}</td>
                                    <td>{{$orderDetail->product_quantity}}</td>
                                    <td>{{$orderDetail->total_amount}}</td>
                                    <td>{{number_format($orderDetail->total_amount*$orderDetail->product_quantity,2)}}</td>
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


@endsection

