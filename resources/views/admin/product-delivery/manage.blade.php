@extends('admin.master')
@section('title')
    Manage Product Delivery
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Delivery Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage Product Delivery</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- File export -->
            <div class="row pb-4 pt-2">
                <div class="col-md-12">
                    <div >

                        <a href="javascript:void(0)" class="btn btn-success py-2">Add Delivery Vendor</a>
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
                        <div class="card-body ">

                            <div class="" >
                                <table class="table table-bordered " id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Order Number</th>
                                        <th>Order Date</th>
                                        <th>Customer Name</th>
                                        <th>Product Name</th>
                                        <th>Product Code</th>
                                        <th>Supplier Name</th>
                                        <th>Product Code</th>
                                        <th>Delivery Vendor</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    {{--@foreach($i as $s)--}}

                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>
{{--                                                <a href="{{route('order-detail',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-info btn-sm" title="Detail"><i class="fa fa-eye"></i></a>--}}
{{--                                                <a href="{{route('order-invoice',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-warning btn-sm" title="Invoice"><i class="fa fa-file-alt"></i></a>--}}
{{--                                                <a href="{{route('order-edit',['id'=>$order->id,'name'=>preg_replace('/\s+/u', '-', trim($customer->name))])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>--}}
                                                {{--<a href="#" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>--}}
                                            </td>
                                        </tr>
                                    {{--@endforeach--}}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="modal" id="deliveryInfo">
            <div class="modal-dialog modal-dialog-centered ">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Add Delivery Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus ad aspernatur beatae deleniti dicta, ducimus exercitationem fugiat illo in iusto minus nemo repellendus rerum, saepe temporibus! At consequatur error vel.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save Info</button>
                    </div>
                </div>
            </div>
        </div>

    </div>



@endsection
