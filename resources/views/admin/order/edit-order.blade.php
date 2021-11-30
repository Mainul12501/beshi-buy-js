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
                                <li class="breadcrumb-item">
                                    <a href="{{route('manage-order')}}">Manage Order</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Order Edit</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header bg-info text-white">Order Edit</div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <form action="{{route('complete')}}" method="POST">
                                    @csrf
                                    <thead>
                                    <tr>
                                        <th>Order Status</th>
                                        <td>
                                            <input type="radio" name="order_status"  {{$order->order_status=='Pending'?'checked':''}} value="Pending" /> Pending
                                            <input type="radio" name="order_status" {{$order->order_status=='Complete'?'checked':''}}  value="Complete"/> Complete
                                            <input type="radio" name="order_status" {{$order->order_status=='Canceled'?'checked':''}}  value="Canceled"/> Canceled
                                            <input type="hidden" value="{{$order->id}}" name="id"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Payment Status</th>
                                        <td>
                                            <input type="radio" name="payment_status" {{$payment->payment_status=='Pending'?'checked':''}} value="Pending" /> Pending
                                            <input type="radio" name="payment_status" {{$payment->payment_status=='Complete'?'checked':''}}  value="Complete"/> Complete
                                            <input type="radio" name="payment_status" {{$payment->payment_status=='Canceled'?'checked':''}}  value="Canceled"/> Canceled
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Delivery Status</th>
                                        <td>
                                            <input type="radio" name="delivery_status" {{$order->delivery_status=='Pending'?'checked':''}} value="Pending" /> Pending
                                            <input type="radio" name="delivery_status" {{$order->delivery_status=='Complete'?'checked':''}}  value="Complete"/> Complete
                                            <input type="radio" name="delivery_status" {{$order->delivery_status=='Canceled'?'checked':''}}  value="Canceled"/> Canceled
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Due Amount</td>
                                        <td>{{number_format($order->order_total)}}</td>
                                    </tr>
                                    <tr>
                                        <th>Paid payment</th>
                                        <td><input type="text" name="paid_amount" value="{{ $order->paid_amount !=null ? $order->paid_amount : '' }}" class="form-control" placeholder="Enter amount here"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="submit" value="Complete" class="btn btn-outline-dark btn-block text-uppercase"/>
                                        </td>
                                    </tr>
                                    </thead>
                                </form>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

