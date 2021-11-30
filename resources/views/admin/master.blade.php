<!DOCTYPE html>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('/')}}admin/assets/images/favicon.png">
    <title>@yield('title') - Admin Panel</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/niceadmin/" />

    {{--select2--}}
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}admin/assets/libs/select2/dist/css/select2.min.css">
    {{--select2--}}

    <!-- Custom CSS -->
    <link href="{{asset('/')}}admin/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="{{asset('/')}}admin/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="{{asset('/')}}admin/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS -->

    {{--dataTables--}}
    <link href="{{asset('/')}}admin/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    {{--ckeditor--}}
    {{-- <link rel="stylesheet" href="{{asset('/')}}admin/ckeditor/samples/css/samples.css">--}}

    <!-- Custom CSS -->
    <link href="{{asset('/')}}admin/assets/dist/css/style.min.css" rel="stylesheet">

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    {{--  datetime picker--}}
     <link rel="stylesheet" href="{{asset('')}}admin/assets/dist/css/wickedpicker.min.css"/>
     <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
    {{-- datetime picker--}}

<!--livewire-->
@livewireStyles
    <script>
        let baseurl     = {!! json_encode(url('/')) !!}+'/';
    </script>
</head>

<body>

<div id="main-wrapper">
 @include('admin.includes.header')

 @include('admin.includes.menu')

 @yield('body')

</div>

<script src="{{asset('/')}}admin/assets/libs/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap tether Core JavaScript -->
<script src="{{asset('/')}}admin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="{{asset('/')}}admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<!--livewire-->
@livewireScripts
<!-- apps -->
<script src="{{asset('/')}}admin/assets/dist/js/app.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/app.init.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/app-style-switcher.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="{{asset('/')}}admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="{{asset('/')}}admin/assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<script src="{{asset('/')}}admin/assets/dist/js/waves.js"></script>



<!--Menu sidebar -->
<script src="{{asset('/')}}admin/assets/dist/js/sidebarmenu.js"></script>

<!--Custom JavaScript -->
<script src="{{asset('/')}}admin/assets/dist/js/custom.min.js"></script>



<!--chartis chart-->
<script src="{{asset('/')}}admin/assets/libs/chartist/dist/chartist.min.js"></script>
<script src="{{asset('/')}}admin/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
<!--c3 charts -->
<script src="{{asset('/')}}admin/assets/extra-libs/c3/d3.min.js"></script>
<script src="{{asset('/')}}admin/assets/extra-libs/c3/c3.min.js"></script>
<script src="{{asset('/')}}admin/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
<script src="{{asset('/')}}admin/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
<script src="{{asset('/')}}admin/dist/js/pages/dashboards/dashboard1.js"></script>

{{--dataTables--}}

<script src="{{asset('/')}}admin/assets/extra-libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/dataTables.buttons.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/buttons.flash.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/jszip.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/pdfmake.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/vfs_fonts.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/buttons.html5.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/buttons.print.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/pages/datatable/datatable-advanced.init.js"></script>

{{--dataTables--}}


{{--select2--}}
<script src="{{asset('/')}}admin/assets/libs/select2/dist/js/select2.full.min.js"></script>
<script src="{{asset('/')}}admin/assets/libs/select2/dist/js/select2.min.js"></script>
<script src="{{asset('/')}}admin/assets/dist/js/pages/forms/select2/select2.init.js"></script>
{{--select2--}}

<!-- ckEditor-->
<script src="{{ asset('/') }}admin/ckeditor/ckeditor.js"></script>

<!--datetime picker-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script src="{{asset('')}}admin/assets/dist/js/wickedpicker.min.js"></script>
<!--datetime picker-->
{{--toaster js--}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

{{--print js--}}
<script src="{{asset('/')}}admin/assets/dist/js/jQuery.print.js"></script>
{{--ajax setup--}}
<script src="{{asset('/')}}admin/assets/js/beshibuy.js"></script>

@yield('extra-js')

<script>
    CKEDITOR.replace('editor');
   /* $('.dropify').dropify();*/
</script>


<script>
    var deleteSubCommentx    = "{{ url('/comment/delete-product-sub-comment') }}";
    function viewSubReviews(id) {
        event.preventDefault();
        // var commentId   = $('#commentId'+id).val();
        var productId   = $('#productId'+id).val();
        // var userId   = $('#userId'+id).val();
        var productUrl     = $('#productUrl'+id).val();
        $('#secTab').show();
        $.ajax({
            url: 'http://localhost:70/beshi_buy/public/comment/get-product-sub-comments-ajax',
            dataType: 'JSON',
            method: 'POST',
            data: {comment_id:id, product_url:productUrl, /*user_id:userId,*/ product_id:productId},
            success: function (data) {
                console.log(data);
                var tbody   = $('#subCommentTbody');
                tbody.empty();
                var t = 1;
                var tr ='';

                $.each(data.subComments, function (index, value) {
                    tr  += '<tr>';
                    tr  += '<td>'+ t++ +'</td>';
                    tr  += '<td><a href="'+data.productUrl+'" target="_blank">'+data.productName.name+'</a></td>';
                    // $.each(data.userNames, function (key, val) {
                    //     if (val.id === value.user_id)
                    //     {
                    //         tr  += '<td>'+val.name+'</td>';
                    //     }
                    // });
                    tr  += '<td>'+value.user_id+'</td>';
                    tr  += '<td>'+value.sub_comment+'</td>';
                    tr  += '<td>';
                    {{--tr  += '<form action="{{ route('sub-comment') }}" method="post" class="">';--}}
                    // tr  += '<div class="form-group">';
                    {{--tr  += '<input type="hidden" name="comment_id" id="commentId{{ $comment->id }}" value="{{ $comment->id }}">';--}}
                        tr  += '</td>';
                    if (value.status == 1)
                    {
                        tr  += '<td>Approved</td>';
                    }else
                    {
                        tr  += '<td>Pending</td>';
                    }
                    // if (value.status == 1)
                    // {
                    //     tr  += '<td>' +
                    //         '<a href="" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>' +
                    //         '<a href="'+deleteSubCommentx+'/'+value.id+'" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm(\'Are you sure..?? \')"><i class="fa fa-trash"></i></a>  </td>';
                    //
                    // }else
                    // {
                    //     tr  += '<td><a href="" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>' +
                    //         '<a href="'+deleteSubCommentx+'/'+value.id+'" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm(\'Are you sure..?? \')"><i class="fa fa-trash"></i></a></td>';
                    // }
                    tr  += '<td><a href="'+deleteSubCommentx+'/'+value.id+'" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm(\'Are you sure..?? \')"><i class="fa fa-trash"></i></a></td>';
                    tr  += '</tr>';
                });
                tbody.html(tr);
            }
        });
    }
</script>


<script>
    $('#productRetailPrice').on('change', function () {
        var selectVal   = $('#productRetailPrice').val();
        $.ajax({
            url: 'http://localhost:70/beshi_buy/public/get-product-retail-price-ajax/'+selectVal,
            method: 'GET',
            dataType: 'JSON',
            success: function (data) {
                $('#retailPrice').val(data.retail_price);
                getTotalOrder();
            }
        });
    })
</script>
<script>
    $('.getTotalOrderAmount').blur(function () {
        getTotalOrder();
    });
    function getTotalOrder() {
        var quantity    = $('#quantity').val();
        var retailPrice    = $('#retailPrice').val();
        var discount    = $('#discount').val();
        var deliveryCharge    = $('#deliveryCharge').val();
        var result  = (parseInt(retailPrice*quantity)+parseInt(deliveryCharge))-discount;
        $('#orderAmount').val(result);
    }
</script>
<script>
    $('#qrProductId').change (function () {
        var productId   = $('#qrProductId').val();
        $.ajax({
            url: 'http://localhost:70/beshi_buy/public/product-qr-code/get-color-test/'+productId,
            method: 'GET',
            dataType: 'JSON',
            success: function (data) {
                console.log(data);
                var optionx = '';
                optionx += '<option value="" disabled selected>Select a color</option>';
                $.each(data.colors, function (key, val) {
                    optionx += '<option value="'+val.name+'" >'+val.name+'</option>'
                });
                $('#colorId').html(optionx);
                var sizex = '';
                sizex += '<option value="" disabled selected>Select a size</option>';
                $.each(data.sizes, function (key, value) {
                    sizex += '<option value="'+value.name+'" >'+value.name+'</option>'
                });
                $('#sizeId').html(sizex);
            },
            error: function () {
                alert('check again')
            }
        });
    });
</script>
<script>
    $(document).ready(function (){
        $('#showDeliveryForm').hide();
    });
    function showGetOrderDetails(serial)
    {
        $.ajax({
            url: 'http://localhost:70/beshi_buy/public/product-delivery/get-order-data',
            method: 'POST',
            dataType: 'JSON',
            data: {order_details_id:serial},
            success:function (data){
                console.log(data);

                $('#orderId').val(data.orderDetails.order_id);
                $('#orderDetailsId').val(serial);
                $('#customerName').val(data.shipping.ship_name);
                $('#customerEmail').val(data.shipping.ship_email);
                $('#customerPhone').val(data.shipping.ship_phone);
                $('#customerAddress').val(data.shipping.ship_address);
                $('#name').val(data.orderDetails.product_name);
                $('#size').val(data.orderDetails.product_size);
                $('#color').val(data.orderDetails.product_color);
                $('#quantity').val(data.orderDetails.product_quantity); //1000
                $('#productCode').val(data.product.code); //1000
                var supplier    = '';
                supplier    += '<option disabled value="">Select Supplier </option>';
                $.each(data.suppliers, function (key, value){
                    supplier    +=  '<option value="'+value.id+'">'+value.name+' </option>'
                });
                $('#supplier').html(supplier);
                var code    = '';
                code    += '<option disabled value="">Select Item Code</option>';
                $.each(data.codes, function (i, val){
                    code    +=  '<option value="'+val+'">'+val+'</option>';
                });
                $('#itemCode').html(code);
                $('#showDeliveryForm').show();
            },
            error: function (){
              /*  alert('something wrong, Probably there's no product with requested color, size and name...');*/
               alert('something wrong, probably there is no product with requested color, size and name ... ');
            }
        });
    }
</script>


</body>

</html>
