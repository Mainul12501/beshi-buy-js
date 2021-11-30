@extends('admin.master')
@section('title')
    Manage Complains
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Complains Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage Complains</li>
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
                            <a class="text-primary font-20">All Complains List</a>
                            <a href="{{route('add-customer-complain')}}" class="btn btn-outline-info float-right">Add Complains</a>
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
                                <table class="table table-bordered" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Customer Name</th>
                                        <th>Customer Email</th>
                                        <th>Customer Mobile</th>
                                        <th>Code</th>
                                        <th>Description</th>
                                        <th>Images</th>
                                        <th>Supplier Name</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($complains as $complain)
                                        <?php
                                        $images         = \App\Models\CustomerComplainImage::where('complain_id', $complain->id)->get();
                                        ?>
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$complain->name}}</td>
                                            <td>{{$complain->email}}</td>
                                            <td>{{$complain->mobile}}</td>
                                            <td>{{$complain->code}}</td>
                                            <td>{{$complain->description}}</td>
                                            <td>
                                                @if(isset($images))
                                                    @foreach($images as $image)
                                                        <img src="{{ asset($image->image) }}" style="height: 60px; width: 60px;" alt="">
                                                    @endforeach
                                                @endif
                                            </td>

                                            <td>
                                               <?php
                                                $productQrCode      = \App\Models\ProductQRcode::where('code', $complain->code)->first();
                                                ?>
                                                @if(isset($productQrCode))
                                                    <?php
                                                    $supplierName       = \App\Models\Supplier::where('code', $productQrCode->supplier_code)->first();
                                                    ?>
                                                {{ $supplierName->name }} [ {{ $supplierName->code }} ]
                                                    @else
                                                <p>Invalied QR code</p>
                                                    @endif
                                            </td>
                                            <td>{{ $complain->status == 0 ? 'Pending' : 'solved' }}</td>

                                            <td>
                                                @if($complain->status == 1)
                                                    <a href="{{route('status-customer-complain',['id'=>$complain->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($complain->status == 0)
                                                    <a href="{{route('status-customer-complain',['id'=>$complain->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
                                            {{-- <a href="{{route('edit-product-QRcode',['id'=>$productQrCode->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>--}}
                                            {{--  <a href="{{route('delete-customer-complain',['id'=>$complain->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>--}}
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    @if(isset($solvedComplains))
                        <div class="card mt-5">
                            <div class="card-text p-3">
                                <a class="text-primary font-20">All Solved Complains List</a>
{{--                                <a href="{{route('add-customer-complain')}}" class="btn btn-outline-info float-right">Add Solved Complains</a>--}}
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
                                    <table class="table table-bordered" id="file_export">
                                        <thead>
                                        <tr>
                                            <th>SN</th>
                                            <th>Customer Name</th>
                                            <th>Customer Email</th>
                                            <th>Customer Mobile</th>
                                            <th>Code</th>
                                            <th>Description</th>
                                            <th>Images</th>
                                            <th>Supplier Name</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        @php($i=1)
                                        <tbody>
                                        @foreach($solvedComplains as $solvedComplain)
                                            <tr>
                                                <td>{{$i++}}</td>
                                                <td>{{$solvedComplain->name}}</td>
                                                <td>{{$solvedComplain->email}}</td>
                                                <td>{{$solvedComplain->mobile}}</td>
                                                <td>{{$solvedComplain->code}}</td>
                                                <td>{{$solvedComplain->description}}</td>
                                                <td>
                                                    <?php
                                                    $images = \App\Models\CustomerComplainImage::where('complain_id', $solvedComplain->id)->get();
                                                    ?>
                                                    @if(isset($images))
                                                        @foreach($images as $image)
                                                            <img src="{{ asset($image->image) }}" style="height: 60px; width: 60px;" class="mx-1" alt="">
                                                        @endforeach
                                                    @endif
                                                </td>

                                                <td>
{{--                                                    <?php--}}
{{--                                                    $productQrCode  = \App\Models\ProductQRcode::where('code', $solvedComplain->code)->first();--}}
{{--                                                    $supplierName   = \App\Models\Supplier::where('code', $productQrCode->supplier_code)->first();--}}
{{--                                                    //                                            select('name')->first();--}}
{{--                                                    //                                                echo $supplierName->name;--}}
{{--                                                    ?>--}}
{{--                                                    {{ $supplierName->name }} [ {{ $supplierName->code }} ]--}}

                                                    <?php
                                                    $productQrCode  = \App\Models\ProductQRcode::where('code', $solvedComplain->code)->first();

                                                    ?>
                                                    @if(isset($productQrCode))
                                                        <?php
                                                        $supplierName   = \App\Models\Supplier::where('code', $productQrCode->supplier_code)->first();
                                                        //                                            select('name')->first();
                                                        //                                                echo $supplierName->name;
                                                        ?>
                                                        {{ $supplierName->name }} [ {{ $supplierName->code }} ]
                                                    @else
                                                        <p>Invalied QR code</p>
                                                    @endif

                                                </td>
                                                <td>{{ $solvedComplain->status == 0 ? 'Pending' : 'solved' }}</td>

                                                <td>
                                                    @if($solvedComplain->status == 1)
                                                        <a href="{{route('status-customer-complain',['id'=>$solvedComplain->id])}}" class="btn btn-outline-info btn-sm" title="Complain Solved"><i class="fa fa-arrow-up"></i></a>
                                                    @elseif($solvedComplain->status == 0)
                                                        <a href="{{route('status-customer-complain',['id'=>$solvedComplain->id])}}" class="btn btn-outline-warning btn-sm" title="Complain Unsolved"><i class="fa fa-arrow-down"></i></a>
                                                    @endif
                                                    {{--                                                <a href="{{route('edit-product-QRcode',['id'=>$productQrCode->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>--}}
                                                    <a href="{{route('delete-customer-complain',['id'=>$solvedComplain->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
