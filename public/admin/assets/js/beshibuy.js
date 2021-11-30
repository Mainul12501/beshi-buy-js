/*ajax setup*/
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
/*ajax setup*/

/*errorMsgClose*/
$('#errorMsgClose').click(function () {
    $(this).text(' ');
});
/*errorMsgClose end */

// datetime picker
$('.only-date').daterangepicker({
    singleDatePicker: true,
    startDate: new Date(),
    showDropdowns: true,
    autoUpdateInput: true,
    locale: {
        format: 'Y-MM-DD'
    }
});
// datetime picker

/*get product module filter*/

$('.pro-cat').change(function (){
    var catId   =   $(this).val();
    $.ajax({
        url         : baseurl+'get-filter-product-category/'+catId,
        method      : 'GET',
        dataType    : 'JSON',
        success     : function (data){
            var res = $('.subEmpty');
            res.empty();

            var option = '';
            option += '<option value=""  selected>Select a Name</option>';
            if (data.length > 0)
            {
                $.each(data, function (key, value) {
                    option += '<option value="'+value.id+' " > '+value.sub_category_name+'</option>';
                });
            } else {
                option += '<option value="">Sorry, No found SubCategory !!</option>';
            }
            res.append(option);
        }
    });
});

$('.pro-sub-cat').change(function (){
    var subId   = $(this).val();
    $.ajax({
        url         : baseurl+'get-subCat-brand-filter/'+subId,
        method      : 'GET',
        dataType    : 'JSON',
        success     : function (data){
            console.log(data)
           var res = $('.emptyBrand');
            res.empty();
            var option = '';
            option += '<option value=""  selected>Select a Brand</option>';
            if (data.length > 0)
            {
                $.each(data, function (key, value) {
                    option += '<option value="'+value.id+' " > '+value.name+'</option>';
                });
            } else {
                option += '<option value="">Sorry, No found Brand !!</option>';
            }
            res.append(option);
        }
    });

});

/*set product code*/

$('.pro-name').focusout(function (){
    var subId       = $('.pro-sub-cat').val();
    $.ajax({
        url         : baseurl+'get-product-code/'+subId,
        method      : 'GET',
        dataType    : 'JSON',
        success     : function (data){
            $('.pro-code').val(data)
        },
        error:function (){
            $('.pro-code').val('Not Found SubCategory Product . Please Try Again !! .')
        }
    });
});


/*get product module filter end*/


/*filter by purchase module start*/

/*$('#purCatId').change(function () {
    var catId = $('#purCatId').val();

    $.ajax({
        url     : baseurl+'get-purchase-category-filter/'+catId,
        method  : 'GET',
        dataType: 'JSON',
        success : function (data) {
            console.log(data)
            var result =   $('.subEmpty');
            result.empty();
            var option = '';
            option += '<option value=""  selected>Select a Name</option>';
            if (data.length > 0)
            {
                $.each(data, function (key, value) {
                    option += '<option value="'+value.id+' " > '+value.sub_category_name+'</option>';
                });
            } else {
                option += '<option value="">Sorry, No found SubCategory !!</option>';
            }
            result.append(option);
        }
    });
});

$('#purSubCatId').change(function () {
    var subId = $(this).val();
    $.ajax({
        url     : baseurl+'get-purchase-subcategory-filter/'+subId,
        method  : 'GET',
        dataType: 'JSON',
        success:function (data) {
            console.log(data);
            var result  =   $('.proEmpty');
            result.empty();
            var option = '';
            option += '<option value="" disabled selected>Select a Product</option>';
            if(data.products.length > 0){
                $.each(data.products, function (key, value) {
                    option += '<option value="'+value.id+' "> '+value.name+'</option>';
                });
            }else{
                option += '<option value="">Sorry, No found product !!</option>';
            }
            result.append(option);

            var bResult = $('.emptyBrand');
            bResult.empty();
            var brandPrint = '';
            brandPrint += '<option value=""  selected>Select a Brand</option>';
            if(data.brands.length >0){
                $.each(data.brands, function (x, val) {
                    $.each(val, function (y, f) {
                        brandPrint += '<option value=" '+f.id+' " > '+f.name+'</option>';
                    })

                });
            }else{
                brandPrint += '<option value="">Sorry, No found brand !!</option>';
            }
            bResult.append(brandPrint);

        }
    });
});*/


$('#purProduct').change(function () {
    var proId = $(this).val();

    $.ajax({
        url     : baseurl+'get-purchase-size-color-filter/'+proId,
        method  : 'GET',
        dataType: 'JSON',
        success:function (data) {
            /*console.log(data);*/
            $('.pur-code').val(data.product.code);
            var sRes = $('.sizeEmpty');
            sRes.empty();
            var size = '';
            size += '<option value="" disabled selected>Select a Size</option>';
            $.each(data.sizes, function (k,v) {
                size += '<option value="'+v.id+'">'+v.name+'</option>';
            });
            sRes.append(size);

            var result = $('.colorEmpty');
            result.empty();
            var color = '';
            color += '<option value="" disabled selected>Select a Color</option>';
            $.each(data.colors, function (key, val) {
                color += '<option value="'+val.id+' " > '+val.name+'</option>';
            });
            result.append(color);

        }

    });
});


/*filter by purchase module end*/


/*set purchase product sell Price start*/

// for insert
function adc(){
    var up      =   parseInt($('.up').val());
    var tq      =   parseInt($('.tq').val());
    var ttc     =   parseInt($('.ttc').val());
    var tmc     =   parseInt($('.tmc').val());
    var toc     =   parseInt($('.toc').val());
    var adc     =   Math.round( (ttc+tmc+toc)/tq);
    var puc     =   up+adc;
    return puc;
}
function setSellPrice(){
    var puc     =   adc();
    var d       =   parseInt( $('.dis').val());
    var v       =   parseInt($('.vat').val());
    var p       =   parseInt( $('.pf').val());
    var pf      =   (puc*p)/100;
    var dis     =   (puc*d)/100;
    var vat     =   (puc*v)/100;

    if(vat && dis){
        var pvd_sp   =  Math.round(puc+pf+vat-dis);
        var pv_sp    =  Math.round(puc+pf+vat);
        $('.psp').val(pvd_sp)
        $('.rp').val(pv_sp)
    }else if( vat || dis){
        if(dis){
            var pd_sp = Math.round(puc+pf-dis);
            var p_sp = Math.round( puc+pf);
            $('.psp').val(pd_sp)
            $('.rp').val(p_sp);
        }else{
            var pv_sp = Math.round(puc+pf+vat);
            $('.psp').val(pv_sp);
            $('.rp').val('');
        }

    }else{
        var p_sp = Math.round(puc+pf);
        $('.psp').val(p_sp);
        $('.rp').val('');
    }
}

$(document).on('keyup','.pf',function (){
    setSellPrice();
});

$(document).on('keyup','.vat',function (){
    setSellPrice();
});

$(document).on('keyup','.dis',function (){
    setSellPrice();
});

/* for Edit */

function editAdc(){
    var up      =   parseInt($('.edit-up').val());
    var tq      =   parseInt($('.edit-tq').val());
    var adc     =   parseInt($('.addt-cost').val());
    var res     =   up+(adc/tq);
    return res;
}

function editSellPrice(){
    var puc     =   editAdc();
    var d       =   parseInt( $('.edit-dis').val());
    var v       =   parseInt($('.edit-vat').val());
    var p       =   parseInt( $('.edit-pf').val());
    var pf      =   (puc*p)/100;
    var dis     =   (puc*d)/100;
    var vat     =   (puc*v)/100;

    if(vat && dis){
        var pvd_sp   =  Math.round(puc+pf+vat-dis);
        var pv_sp    =  Math.round(puc+pf+vat);
        $('.edit-psp').val(pvd_sp)
        $('.edit-rp').val(pv_sp)
    }else if( vat || dis){
        if(dis){
            var pd_sp = Math.round(puc+pf-dis);
            var p_sp = Math.round( puc+pf);
            $('.edit-psp').val(pd_sp)
            $('.edit-rp').val(p_sp);
        }else{
            var pv_sp = Math.round(puc+pf+vat);
            $('.edit-psp').val(pv_sp);
            $('.edit-rp').val('');
        }

    }else{
        var p_sp = Math.round(puc+pf);
        $('.edit-psp').val(p_sp);
        $('.edit-rp').val('');
    }
}

$(document).on('keyup','.edit-pf',function (){
    editSellPrice();
});

$(document).on('keyup','.edit-vat',function (){
    editSellPrice();
});

$(document).on('keyup','.edit-dis',function (){
    editSellPrice();
});



/*set purchase product sell Price end*/


// purchase reseller & self html part start
$('.pro-store').click(function (){
    var res     =   $(this).val();
    var hs      =   $('.hide-self');
    var hrs     =   $('.hide-reseller');

    if(res == 0){
        hs.css('display','block');
        hrs.css('display','none');

    }else if(res == 1){
        hs.css('display','none');
        hrs.css('display','block');
    }
});

// purchase reseller & self html part end

$('.vou-no').keyup(function (){
    var vn = $(this).val();
    $.ajax({
        url         :   baseurl+'check-voucher-no/'+vn,
        method      :   'GET',
        dataType    :   'JSON',
        success     :   function (data){
            $('.chk-no').text(data);
        },

    });

});


// get sub-category by category & get qr codes

$(document).on('change', '#categoryId', function () {
    var categoryId = this.value;
    $.ajax({
        url : baseurl+'get-sub-category'+'/'+categoryId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            /* console.log(data);*/

            // var result = $('#subCategoryId');
            var result = $('.subCategoryIds');
            var codes = $('.qrcodeX');
            result.empty();
            var option = '';
            option += '<option value=""  selected>Select a Name</option>';
            $.each(data.subCategories, function (key, value) {
                option += '<option value=" '+value.id+' " > '+value.sub_category_name+'</option>';
            });
            result.append(option);

            codes.empty();
            var div = '';
            $.each(data.codes, function (key, value) {
                div += '<option value=" '+value.code+' " > '+value.code+'</option>';
            });
            codes.append(div);
        }
    });
});

<!--get qr code data for print start-->

$('#codeSub').submit(function () {
    event.preventDefault();
    var startForm   = $('#startFrom').val();
    var end         = $('#end').val();
    var formdata    = {
        'start_form'    : startForm,
        'end'    : end,
    };
    var asset   = "{{ asset('/') }}";

    $.ajax({
        url: baseurl+'qr-code/get-qr-data-for-print',
        method: 'POST',
        dataType: 'JSON',
        data: formdata,
        success: function (data) {
            // console.log(data);
            if (data.length > 1)
            {
                var x       = $('#print');
                x.empty();
                var div = '';
                $.each(data,function (key, value) {
                    div += '<div style="height: 250px; width: 400px; position: relative; margin: 10px; float: left;">';
                    div += '<img src="'+asset+value.qr_image+'" alt="" style="height: 80px; width: 80px;position: absolute; left: 0;">';
                    div += '<div class="" style="position: absolute; top: 4px; left: 92px;">';
                    div += '<p style="margin-bottom: 3px;">Beshi buy</p>';
                    div += '<p style="margin-bottom: 3px;">Qr code: '+value.code+'</p>';
                    div += '</div>';
                    div += '</div>';
                });
                x.html(div);
            }

        },
        error: function () {
            alert('somethig wrong. Check ur Start and End Input');
        }
    })
});

function xprint() {

    // $('#print').print();
    $.print('#print');
}

<!--get qr code data for print end-->

// get products by sub-category
$(document).on('change', '.subCategoryIds', function () {
    var subCategoryId = this.value;

    $.ajax({
        url : baseurl+'get-products-sub'+'/'+subCategoryId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            // var result = $('#productId');
            var result = $('.productIds');
            result.empty();
            var option = '';

            if (data.length > 0)
            {
                $.each(data, function (key, value) {
                    option += '<option value=" '+value.id+' " > '+value.name+'</option>';
                });
            } else {
                option += '<option value="">Sorry, No Products</option>';
            }

            result.append(option);
        }
    });
});
