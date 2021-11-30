// imported from customJs

// modal view
// $('.quickView').click(function (e) {
$(document).on('click','.quickView',function (e) {
    e.preventDefault();

    var productId = $(this).attr('data-id');
    $.ajax({
        url: baseurl+'product-add-cart/'+productId,
        method: 'GET',
        dataType:'JSON',
        success:function (data) {
            // console.log(data);
            // $('#proImg').attr('src',data.product.image);

            var big = $('#big');
            big.empty();
            var div = '';
            div += '<div class="tab-pane fade show active" id="tab12" role="tabpanel" >';
            div += '<div class="modal_tab_img"><a href="#"><img src="'+baseurl+data.product.image+'" alt=""></a></div>';
            div += '</div>';
            $.each(data.subImages, function (key, value) {
                // if (key === 0)
                // {

                //     div += '<div class="tab-pane fade show active" id="tab'+ key +'" role="tabpanel" >';
                // }else {

                //     div += '<div class="tab-pane fade" id="tab'+ key +'" role="tabpanel" >';
                // }

                div += '<div class="tab-pane fade" id="tab'+ key +'" role="tabpanel" >';

                div += '<div class="modal_tab_img"><a href="#"><img src="'+baseurl+value.sub_image+'" alt=""></a></div>';
                div += '</div>';

            });
            big.html(div);
            var small = $('#small');
            small.empty();
            var t = '';

            t += '<li><a class="nav-link active" data-toggle="tab" href="#tab12" role="tab" aria-controls="tab12" aria-selected="false"><img src="'+baseurl+data.product.image+'" alt=""></a></li>';

            $.each(data.subImages, function (index, val) {
                // if (index ===0 )
                // {
                //     t += '<li><a class="nav-link active" data-toggle="tab" href="#tab'+index+'" role="tab" aria-controls="tab'+index+'" aria-selected="false"><img src="'+val.sub_image+'" alt="" class=""></a></li>';
                // } else {
                //     t += '<li><a class="nav-link" data-toggle="tab" href="#tab'+index+'" role="tab" aria-controls="tab'+index+'" aria-selected="false"><img src="'+val.sub_image+'" alt="" class=""></a></li>';
                // }
                t += '<li><a class="nav-link " data-toggle="tab" href="#tab'+index+'" role="tab" aria-controls="tab'+index+'" aria-selected="false"><img src="'+baseurl+val.sub_image+'" alt=""></a></li>';
            });
            small.html(t);

            $('#modalName').html(data.product.name);
            $('#modalPrice').html('BDT - '+(data.product.sell_price).toFixed().replace(/\d(?=(\d{3})+\.)/g, '$&,')+' TK');
            // $('#modalPrice').html('BDT - '+(data.product.sell_price).toString().replace(/\d(?=(\d{3})+\.)/g, '$&,')+' TK');

            $('#modalDes').html(data.product.long_description);
            var productSize = $('#modalSizex');
            productSize.empty();
            var size = '';
            $.each(data.sizes, function (a, b) {
                if (a === 0)
                {
                    size += '<option selected value="'+b+'">'+b+'</option>';
                } else {
                    size += '<option value="'+b+'">'+b+'</option>';
                }
            });
            productSize.append(size);
            var color   = $('#modalColorx');
            color.empty();
            var col = '';
            $.each(data.colors, function (c, d) {
                if (c === 0)
                {
                    col += '<option selected value="'+d+'">'+d+'</option>';
                } else {
                    col += '<option value="'+d+'">'+d+'</option>';
                }
            });
            color.append(col);

            $('#productId').val(data.product.id);

        }
    });

});

// modal form submit
$('#modalForm').on('submit', function () {
    // $('#modalButton').on('click', function () {
    event.preventDefault();

    var formData = {
        'size'  : $('#modalSizex').val(),
        'color'  : $('#modalColorx').val(),
        'qty'  : $('#qty').val(),
        'product_id' : $('#productId').val(),
    };

    $.ajax({

        url: baseurl+'cart/add-to-cart-ajax',
        method: 'POST',
        dataType: 'JSON',
        // data: {size:size, color:color, product_id:productId},
        data: formData,
        success: function (data) {
            // console.log(data);
            toastr.success(' Product added to cart .')
            // sweet alert
            /*Swal.fire({
                position: 'top-middle',
                icon: 'success',
                title: 'Your product has been saved in cart.',
                // title: data,
                showConfirmButton: false,
                timer: 1000,
                heightAuto: false,
            });*/
            runCart();
        }
    });

    $('#modal_box').modal('hide');

});

// put product to cart from product details page and home page show product divs [home page product show type 2 not using r8 now]
function productId(productId) {
    event.preventDefault();

    var size = $('.size'+productId+' li input[name=size_name]:checked').val();
    var color = $('.color'+productId+' li input[name=color]:checked').val();
    // console.log(size);

    if ((size != null) && (color != null))
    {
        $.ajax({
            url: baseurl+'cart/add-to-cart-ajax',
            method: 'POST',
            dataType: 'JSON',
            data: {size:size, color:color, product_id:productId},
            success: function (data) {
                // console.log(data);
                toastr.success('product added to cart .')
                runCart();

                // var to = $('#hoverCart');
                // to.empty();
                // var i = '';
                // if (data.length >1)
                // {
                //     i += '<i class="zmdi zmdi-shopping-basket" ></i> <span>'+data+'items</span>';
                // } else {
                //     i += '<i class="zmdi zmdi-shopping-basket" ></i> <span>'+data+'item</span>'
                // }
                // to.html(i);
                // $('.total_item').html(data);
            }
        });
    } else {
        toastr.error('Please select size & color .');

    }
}
function goToCheckOut(productId)
{
    event.preventDefault();

    var size = $('.size'+productId+' li input[name=size_name]:checked').val();
    var color = $('.color'+productId+' li input[name=color]:checked').val();
    // console.log(size);

    if ((size != null) && (color != null))
    {
        $.ajax({
            url: baseurl+'cart/add-to-cart-ajax',
            method: 'POST',
            dataType: 'JSON',
            data: {size:size, color:color, product_id:productId},
            success: function (data) {
                // console.log(data);
                toastr.success('product added to cart .')
                runCart();

                window.location.href    = baseurl+'checkout';

                // var to = $('#hoverCart');
                // to.empty();
                // var i = '';
                // if (data.length >1)
                // {
                //     i += '<i class="zmdi zmdi-shopping-basket" ></i> <span>'+data+'items</span>';
                // } else {
                //     i += '<i class="zmdi zmdi-shopping-basket" ></i> <span>'+data+'item</span>'
                // }
                // to.html(i);
                // $('.total_item').html(data);
            }
        });
    } else {
        toastr.error('Please select size & color .');

    }
}
