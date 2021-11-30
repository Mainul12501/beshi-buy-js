@extends('front.master')
@section('title')
    Checkout
@endsection
@section('body')

    {{--@include('front.includes.2ndMenu')--}}

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li class="text-primary">Checkout</li>
                            <li>Add Shipping Address</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <!--Checkout page section-->
    <div class="Checkout_section mt-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-12">
                    <div class="card">
                        <div class="card-header bg-success p-1">
                            <h3 class="text-white ml-3 pt-4 pb-4"> Add Shipping Address :</h3>
                        </div>
                        <div class="card-body p-4">
{{--                            <form action="{{route('new-address')}}" method="POST" id="addAddressForm">--}}
                            <form action="" method="POST" id="addAddressForm">
                                @csrf
                                <div class="form-group">
                                    <label> Name :</label>
                                        <input type="text" class="form-control" name="name"  placeholder="Enter Name" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                                </div>
                                <div class="form-group">
                                    <label> Email :</label>
                                        <input type="email" class="form-control" name="email"  placeholder="Enter  Email" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>
                                </div>
                                <div class="form-group">
                                    <label> Mobile :</label>
                                        <input type="text" class="form-control" name="phone"  placeholder="01XXX . . . ." style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('phone') ? $errors->first('phone') : '' }}</span>
                                </div>
                                <div class="form-group">
                                    <label> City / Thana :</label>
                                    <input type="text" class="form-control" name="city" placeholder="City/Thana" style="height: 3rem" >
                                </div>
                                <div class="form-group">
                                    <select name="district_id" class="form-control districtId" style="height: 3rem" >
                                        <option value="" disabled selected>Select District</option>
                                        @foreach($districts as $district)
                                            <option value="{{$district->id}}">{{$district->district_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label> Address :</label>
                                    <textarea name="address" class="form-control" placeholder="Enter Address" style="height: 5rem"></textarea>
                                    <span class="text-danger">{{ $errors->has('address') ? $errors->first('address') : '' }}</span>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-dark text-warning btn-block"  value="Add Address" id="saveBtn"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



    <!--Checkout page section end-->

@endsection

@section('extra-js')
    <script>
        $('form#addAddressForm').on('submit', function (e) {
            e.preventDefault();
            $('#saveBtn').attr('disabled', true);
            $.ajax({
                url: baseurl+'new-address',
                method: 'POST',
                dataType: 'JSON',
                data: $('form#addAddressForm').serialize(),
                success: function (response) {
                    if (response === 'success')
                    {
                        toastr.success('Your data saved successfully.')
                        $('form#addAddressForm')[0].reset();
                        setTimeout(function () {
                            // window.location.href    = BASE_URL+'checkout/process-to-checkout';
                            location.replace(baseurl+'checkout');
                        }, 2000);
                    }
                },
                error: function () {
                    toastr.error('Something went wrong. Please try again..');
                },
                complete: function () {
                    $('#saveBtn').attr('disabled', false);
                }
            })
        })
    </script>
@endsection

