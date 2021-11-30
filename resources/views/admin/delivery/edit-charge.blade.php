@extends('admin.master')
@section('title')
    Charge List
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Delivery Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Edit Delivery Charge</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="card  border">
                        <div class="card-header bg-dark text-white font-16" style="font-family:'Century Gothic';padding: 10px">
                            Edit  Charge Info
                            <a href="{{route('charge-list')}}" class="btn btn-outline-info float-right">Charge List </a>
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

                            <form action="{{route('update-charge')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$delivery->id}}"/>
                                <div class="form-group">
                                    <label for="name">District Name :</label>
                                    <select name="district_id" class="form-control" style="height:45px">
                                        <option value="" disabled  selected>Select District</option>
                                        @foreach($districts as $district)
                                            <option value="{{ $district->id }}"{{$delivery->district_id == $district->id ? 'selected' : ''}}>{{ $district->district_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="name">Product Name :</label>
                                    <select name="product_id" class="form-control" style="height:45px">
                                        <option value="" disabled  selected>Select Product</option>
                                        @foreach($products as $product)
                                            <option value="{{ $product->id }}" {{$delivery->product_id == $product->id ? 'selected' : ''}}>{{ $product->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="delivery_charge">Delivery Charge :</label>
                                    <input type="text" name="delivery_charge" class="form-control" value="{{$delivery->delivery_charge}}" style="height:45px"/>

                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Update" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
