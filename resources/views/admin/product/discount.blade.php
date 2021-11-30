@extends('admin.master')
@section('title')
    Discount
@endsection
@section('extra-css')

@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Discount Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-slider')}}" class="text-warning">Product Discount</a>
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
                            <a class="text-primary font-20">All Product Discount List</a>
                            <button type="button" class="btn btn-primary float-right mr-5" data-toggle="modal" data-target="#exampleModal">
                                {{--                            Add Coupon--}}
                                <i class="fas fa-plus-circle"></i>
                            </button>
                        </div>
{{--                        <div class="card-text p-3 input-dicount">--}}
{{--                            <a class="text-primary font-20">Add product discount</a>--}}
{{--                        </div>--}}
                        <!-- Button trigger modal -->

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
                                        <th>Product Name</th>
                                        <th>Coupon Name</th>
                                        <th>Coupon Code</th>
{{--                                        <th>Amount(%)</th>--}}
                                        <th>Discount</th>
                                        <th>Reduce Amount</th>
                                        <th>Description</th>
                                        <th>Start Time</th>
                                        <th>End Time</th>
                                        <th>Validity</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody id="tableBody">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <style>
            span.right {
                float: right;
                font-size: 20px!important;
            }
            .form-control-feedback {
                position: absolute;
                top: 37px;
                right: 15px;
            }
            .size{
                font-size: 26px;
                margin-top: 4px;
            }
            @media screen and (min-width: 780px){
                .wide-modal {
                    min-width: 750px!important;
                }
            }
        </style>
        <!-- Modal -->
        <div class="modal fade modal-width" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable wide-modal ">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Product Discount</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="input-discount py-2">
                            <form action="{{ route('add-discount') }}" id="couponCreateForm" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="title">Coupon Name :</label>
                                        <input type="text" id="couponName" class="form-control" name="coupon_name" placeholder="Coupon Name" style="padding: 1.25rem"/>
                                        <input type="hidden" name="discount_id" id="editId">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="name">Category Name :</label>
                                        <select name="category_id" id="categoryId" class="form-control" style="height:45px">
                                            <option value="" disabled  selected>Select Category</option>
                                            @foreach($cats as $cat)
                                                <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="name">Sub-Category Name :</label>
                                        <select name="sub_category_id" id="subCategoryId" class="form-control subCategoryIds" style="height:45px">
                                            <option value="" disabled  selected>Select Sub-Category</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="name">Product Name :</label>
                                        <select name="product_id" class="form-control productIds"  id="qrProductId" style="height:45px">
                                            <option value="" disabled  selected>Select a Product</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="title">Amount in Percentage :</label>
                                        <input type="number" id="percentage" class="form-control" name="discount_percentage" placeholder="%" style="padding: 1.25rem"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="description">Amount in Cash :</label>
                                        <input type="number" id="cash" class="form-control" name="discount_cash" placeholder="Cash" style="padding: 1.25rem"/>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="date">Discount Starting Date :</label>
                                        <input type="text"  class="form-control" id="startDate" data-target="#startDate" name="start_date" />
                                        <span class="fas fa-calendar form-control-feedback right" data-toggle="datetimepicker" data-target="#startDate" aria-hidden="true"></span>

{{--                                        <label for="startDate">Discount Starting Date :</label>--}}
{{--                                        <div class='input-group date'>--}}
{{--                                            <input type='text' id="startDateInput" readonly class="form-control only-date" name="start_date" />--}}
{{--                                        </div>--}}

                                    </div>
                                    <div class="col-md-6">
                                        <label for="endDate">Discount Ending Date :</label>

                                        <input type="text"  class="form-control" id="endDate" data-target="#endDate" name="end_date" />
                                        <span class="fas fa-calendar form-control-feedback right" data-toggle="datetimepicker" data-target="#endDate" aria-hidden="true"></span>
{{--                                       <div class='input-group date'>--}}
{{--                                            <input type="text" name="end_date" class="form-control only-date" id="endDateInput">--}}
{{--                                        </div>--}}

                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="coupon_code">Coupon Code</label>
                                    <input type="text" id="code" class="form-control" name="coupon_code" required>
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="description" class="form-control" id="description" cols="30" rows="5" placeholder="Description"></textarea>
                                </div>
                                <hr>
                                <div class="form-group text-center">
                                    <button type="reset" id="resetForm" class="btn btn-outline-dark font-18" >Reset</button>
{{--                                    <a href="#" id="resetForm" class="btn btn-outline-dark font-18">Reset</a>--}}
                                    <input type="submit" id="formSubmit" class="btn btn-outline-success font-18" value="Save" />
                                </div>

                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger close" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('extra-js')

{{--    test 4--}}
{{--    font awasome--}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css" rel="stylesheet">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script>
    $(function () {
        $('#startDate').datetimepicker({
            icons: {
                time: 'fas fa-clock',
                date: 'glyphicon glyphicon-calendar',
                up: 'fas fa-arrow-up',
                down: 'fas fa-arrow-down',
                previous: 'fas fa-arrow-left',
                next: 'fas fa-arrow-right',
                today: 'glyphicon glyphicon-screenshot',
                clear: 'glyphicon glyphicon-trash',
                close: 'glyphicon glyphicon-remove'
            },
            format: 'DD-MM-YYYY HH:mm:ss',
            ignoreReadonly: true,
        });
    });
</script>
<script>
    $(function (){
        $('#endDate').datetimepicker({
            icons: {
                time: 'fas fa-clock',
                date: 'glyphicon glyphicon-calendar',
                up: 'fas fa-arrow-up',
                down: 'fas fa-arrow-down',
                previous: 'fas fa-arrow-left',
                next: 'fas fa-arrow-right',
                today: 'glyphicon glyphicon-screenshot',
                clear: 'glyphicon glyphicon-trash',
                close: 'glyphicon glyphicon-remove'
            },
            format: 'DD-MM-YYYY HH:mm:ss',
            ignoreReadonly: true,
        });
    })
</script>

<script>
    $(function (){
        setTimeout(function (){
            tableLoop();
        },500);
    });
    function tableLoop ()
    {
        $.ajax({
            url: baseurl+'get-all-discounts',
            method: 'GET',
            dataType: 'JSON',
            beforeSend: function () {
                $('#formSubmit').attr('disabled', true);
            },
            success: function (response) {
                console.log(response);
                if (response === 'error')
                {
                    toastr.error('No data in this table.');
                } else {
                    var tbody   = $('#tableBody');
                    tbody.empty();

                    var td  = '';
                    var i = 1;
                    $.each(response.productDiscounts, function (key, productDiscount){
                        td  +=  '<tr>';
                        td  += '<td>'+i++ +'</td>';
                        $.each(response.products, function (index, product){
                            if (productDiscount.product_id === product.id)
                            {
                                td  +=  '<td>'+product.name+'</td>';
                            }
                        })
                        td  +=  '<td>'+productDiscount.coupon_name+'</td>';
                        td  +=  '<td>'+productDiscount.coupon_code+'</td>';
                        if (productDiscount.discount_percentage !== 0)
                        {
                            td  +=  '<td>'+productDiscount.discount_percentage+'%</td>';
                        } else {
                            td  +=  '<td>'+productDiscount.discount_cash+'</td>';
                        }
                        td  +=  '<td>'+productDiscount.reduce_amount+'</td>';
                        td  +=  '<td>'+productDiscount.description+'</td>';
                        td  +=  '<td>'+productDiscount.start_date+'</td>';
                        td  +=  '<td>'+productDiscount.end_date+'</td>';
                        // td  +=  '<td>'+productDiscount.start_date+' - To - '+productDiscount.end_date+'</td>';
                        if (productDiscount.validity === 1){
                            td  +=  '<td> Valid </td>';
                        } else {
                            td  +=  '<td> Expired </td>';
                        }
                        td  +=  '<td><button type="button" class="btn btn-sm '+(productDiscount.status === 1 ? "btn-success" : "btn-danger")+'" >';
                        td  +=  's-'+productDiscount.status === 0 ? "Inactive" : "Active"+'';
                        td  +=  '</button></td>';
                        td  +=  '<td>';
                        td  +=  '<a href="" onclick="changeStatus('+productDiscount.id+')" class="btn btn-outline-warning mt-1 mr-2 btn-sm" title="Status"><i class="fas fa-sync"></i></a>';
                        td  +=  '<a href="" onclick="edit('+productDiscount.id+')" class="btn btn-outline-success mt-1 mr-2 btn-sm" title="Edit"><i class="fa fa-edit"></i></a>';
                        td  +=  '<a href="" class="btn btn-outline-danger mr-2 btn-sm mt-1" type="Delete" onclick="del('+productDiscount.id+')"><i class="fa fa-trash"></i></a>';
                        td  +=  '</td>';
                        td  +=  '</tr>';
                    });
                    tbody.html(td);
                    // tbody.append(td);
                }
            },
            error: function (){
                toastr.error('Something went wrong. Please try again.');
            },
            complete: function () {
                $('#formSubmit').attr('disabled', false);
            }
        })
    }
    function del(id)
    {
        // event.preventDefault();
        var ansC = confirm('Are you sure..?? ');
        if (ansC)
        {
            event.preventDefault();
            $.ajax({
                url: baseurl+'del/'+id,
                method: 'GET',
                dataType: 'JSON',
                success: function (response) {
                    toastr.success(response);
                    tableLoop();
                },
                error: function (){
                    toastr.error('Something went wrong. Please try again.');
                },
            })
        } else {
            event.preventDefault();
            // event.stopImmediatePropagation();
        }
    }
    function edit(id)
    {
        event.preventDefault();
        $.ajax({
            url: baseurl+'edit/'+id,
            method: 'GET',
            dataType: 'JSON',
            success: function (response) {
                console.log(response);
                $('#couponName').val(response.discount.coupon_name);
                // $('input[name="coupon_name"]').val(response.discount.coupon_name);
                $('#percentage').val(response.discount.discount_percentage);
                // $('input[name="discount_percentage"]').val(response.discount.discount_percentage);
                $('#cash').val(response.discount.discount_cash);
                // $('input[name="discount_cash"]').val(response.discount.discount_cash);
                $('#code').val(response.discount.coupon_code);
                // $('input[name="coupon_code"]').val(response.discount.coupon_code);
                $('#description').val(response.discount.description);
                $('#startDate').val(moment(response.discount.start_date).format('DD-MM-YYYY HH:mm:ss'));
                // $('input[name="start_date"]').val(response.discount.start_date);
                // $('#endDateInput').val(response.discount.end_date);
                $('#endDate').val(moment(response.discount.end_date).format('DD-MM-YYYY HH:mm:ss'));
                // $('input[name="end_date"]').val(response.discount.end_date);
                $('#editId').val(response.discount.id);
                // $('input[name="discount_id"]').val(response.discount.id);

                // select options
                // test 3
                var subCat  = $('#subCategoryId'); //sub-category
                subCat.empty();
                var option  = '';
                option  += '<option value="'+response.subCatName.id+'" selected>'+response.subCatName.sub_category_name+'</option>';
                subCat.append(option);

                var product  = $('#qrProductId'); //product
                product.empty();
                var productName  = '';
                productName  += '<option value="'+response.productName.id+'" selected>'+response.productName.name+'</option>';
                product.html(productName);
                // test 2
                $('#categoryId option[value="'+response.productName.category_id+'"]').prop('selected', true);
                // test1
                // $('select[name="category_id"]').val(response.discount.product_id);

                $('#exampleModal').modal('show');
            },
            error: function (){
                toastr.error('Something went wrong. Please try again.');
            },
        })
    }
    function changeStatus(id)
    {
        event.preventDefault();
        $.ajax({
            url: baseurl+'change-status/'+id,
            method: 'GET',
            dataType: 'JSON',
            success: function (response) {
                tableLoop();
                toastr.success('Status Changed successfully.');
            },
            error: function (){
                toastr.error('Something went wrong. Please try again.');
            },
        })
    }
</script>
<script>
    $("form#couponCreateForm").on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            url: baseurl+'new-discount',
            method: 'POST',
            dataType: 'JSON',
            data: $('#couponCreateForm').serialize(),
            beforeSend: function () {
                $('#formSubmit').attr('disabled', true);
            },
            success: function (response) {
                console.log(response);
                toastr.success('Data saved successfully.')
                $('#resetForm').trigger('click');
                tableLoop();
                $('#exampleModal').modal('hide');
            },
            error: function (){
                toastr.error('Something went wrong. Please try again.');
            },
            complete: function () {
                $('#formSubmit').attr('disabled', false);
            }
        })
    })
</script>


@endsection
