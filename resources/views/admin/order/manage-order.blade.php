@extends('admin.master')
@section('title')
    Order
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
                                <li class="breadcrumb-item active" aria-current="page">Manage Order</li>
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
                            <a class="text-primary font-20">All Orders List</a>
                        </div>
                        <div class="card-body">
                            <div class="card-text text-center ">
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
                                        <th>SN</th>
                                        <th>Date</th>
                                        <th>C.Name</th>
                                        <th>C.Phone</th>
                                        <th>Address</th>
                                        {{--<th>P.Name</th>--}}
                                        <th>O.Total</th>
                                        <th>O.Status</th>
                                        <th>P.Type</th>
                                        <th>P.Status</th>
                                        <th>D.Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($orders as $order)
                                        <?php
                                            $customer = \App\Models\Customer::find($order->customer_id);
                                            $shipping = \App\Models\Shipping::find($order->shipping_id);
                                            $payment  = \App\Models\Payment::where('order_id',$order->id)->first();
                                            /*$orderDetails= \App\Models\OrderDetail::where('order_id',$order->id)->get();*/
                                        ?>
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$order->created_at->format('d-m-Y') }}</td>
                                            @if(isset($customer))
                                            <td>{{$customer->name }}</td>
                                            @else
                                             <td>Unknown</td>
                                            @endif
                                            @if($customer)
                                            <td class="text-primary">{{$customer->phone }}</td>
                                            @else
                                             <td></td>
                                            @endif

                                            @if($customer)
                                            <td>{{$customer->address }}</td>
                                            @else
                                             @if($customer)
                                            <td>{{$shipping->ship_address }}</td>
                                            @else
                                             <td></td>
                                            @endif

                                            @endif
                                            {{--<td>
                                                <table>
                                                    @foreach($orderDetails as $orderDetail)
                                                    <tr>
                                                        <td>{{Str::limit($orderDetail->product_name,15)}}</td>
                                                    </tr>
                                                     @endforeach
                                                </table>
                                            </td>--}}

                                            @if($order->order_status == 'Complete')
                                                <td class="text-success font-bold">{{number_format($order->order_total,2)}}</td>
                                             @elseif($order->order_status == 'Canceled')
                                                <td class="text-danger">{{number_format($order->order_total,2)}}</td>
                                                @else
                                                <td class="text-warning">{{number_format($order->order_total,2)}}</td>
                                             @endif

                                            @if($order->order_status == 'Canceled')
                                            <td class="text-danger">{{$order->order_status }}</td>
                                            @elseif($order->order_status == 'Complete')
                                                <td class="text-success font-bold">{{$order->order_status }}</td>
                                            @else
                                              <td class="text-warning">{{$order->order_status }}</td>
                                             @endif

                                            <td>{{$payment->payment_type }}</td>

                                             @if($payment->payment_status == 'Canceled')
                                            <td class="text-danger">{{$payment->payment_status }}</td>
                                            @elseif($payment->payment_status == 'Complete')
                                                <td class="text-success font-bold">{{$payment->payment_status }}</td>
                                            @else
                                                <td class="text-warning">{{$payment->payment_status }}</td>
                                             @endif
                                            @if($order->delivery_status == 'Canceled')
                                                <td class="text-danger">{{$order->delivery_status }}</td>
                                            @elseif($order->delivery_status == 'Complete')
                                                <td class="text-success font-bold">{{$order->delivery_status }}</td>
                                            @else
                                                <td class="text-warning">{{$order->delivery_status }}</td>
                                            @endif

                                            @if(isset($customer))
                                            <td>
                                                <a href="{{route('order-detail',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-info btn-sm" title="Detail"><i class="fa fa-eye"></i></a>
                                                <a href="{{route('order-invoice',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-warning btn-sm" title="Invoice"><i class="fa fa-file-alt"></i></a>
                                                <a href="{{route('order-edit',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                                <a href="{{ route('add-product-delivery', ['id' => $order->id]) }}" class="btn btn-outline-orange btn-sm" type="Delete" ><i class="fa fa-truck"></i></a>
                                            </td>
                                            @else
                                                <?php
                                                    $customerName   = 'Unknown';
                                                ?>
                                            <td>
                                                <a href="{{route('order-edit',['id'=>$order->id,'name'=>$customerName])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                                <a href="{{ route('add-product-delivery', ['id' => $order->id]) }}" class="btn btn-outline-orange btn-sm" type="Delete" ><i class="fa fa-truck"></i></a>
                                            </td>
                                         @endif
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{--row two test--}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">Orders Payment List</a>
                        </div>
                        <div class="card-body">
                            <div class="" >
                                <table class="table table-bordered font-12" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Date</th>
                                        <th>C.Name</th>
                                        <th>O.Total</th>
                                        <th>P.Type</th>
                                        <th>V. Phone</th>
                                        <th>Txt Id</th>
                                        <td>Paid(Tk.)</td>
                                        <th>Due</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($orders as $order)
                                        <?php
                                        $customer = \App\Models\Customer::find($order->customer_id);
                                        $shipping = \App\Models\Shipping::find($order->shipping_id);
                                        ?>
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$order->created_at->format('d-m-Y') }}</td>
                                            @if(isset($customer))
                                            <td>{{$customer->name }}</td>
                                            @else
                                             <td>Unknown</td>
                                            @endif
                                            @if($order->order_status == 'Complete')
                                                <td class="text-success font-bold">{{number_format($order->order_total,2)}}</td>
                                            @elseif($order->order_status == 'Canceled')
                                                <td class="text-danger">{{number_format($order->order_total,2)}}</td>
                                            @else
                                                <td class="text-warning">{{number_format($order->order_total,2)}}</td>
                                            @endif
                                            <td>{{ $order->vendor }}</td>
                                            <td>{{ $order->bkash_phone != null ? $order->bkash_phone : '' }}{{ $order->rocket_phone != null ? $order->rocket_phone : '' }}{{ $order->nagad_phone != null ? $order->nagad_phone : '' }}</td>
                                            <td>{{ $order->bkash_txt_id != null ? $order->bkash_txt_id : '' }}{{ $order->rocket_txt_id != null ? $order->rocket_txt_id : '' }}{{ $order->nagad_txt_id != null ? $order->nagad_txt_id : '' }}</td>
                                            <td>{{number_format ($order->paid_amount,2) }}</td>
                                            <td>{{ $order->order_total - $order->paid_amount }}</td>
                                            @if(isset($customer))
                                            <td>
                                                <a href="{{route('order-detail',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-info btn-sm" title="Detail"><i class="fa fa-eye"></i></a>
                                                <a href="{{route('order-invoice',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-warning btn-sm" title="Invoice"><i class="fa fa-file-alt"></i></a>
                                                <a href="{{route('order-edit',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                            </td>
                                            @else
                                                <?php
                                                    $customerName   = 'Unknown';
                                                ?>
                                            <td>
                                                <a href="{{route('order-edit',['id'=>$order->id,'name'=>$customerName])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                            </td>
                                             @endif
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
