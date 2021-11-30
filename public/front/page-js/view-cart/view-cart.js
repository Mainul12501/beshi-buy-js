// continue shopping [redirect to home page]
$(document).on('click', '#contShoping', function (){
    document.location.href  = baseurl;
});
// coupon section start
// apply coupon
$(document).on('click','#applyCoupon',function (){
    var couponCode  = $('#coupon').val();
    if (couponCode !== '')
    {
        $.ajax({
            url: baseurl+'check-coupon/'+couponCode,
            method: 'GET',
            dataType: 'JSON',
            success: function (data){

                console.log(data);


                // append cart page here

                if (data.status === 'success')
                {
                    toastr.success(data.message);
                    $('#couponDiscountDiv').removeClass('hide-div').addClass('show-div'); //show coupon amount div
                    $('#couponDiscountAmount').html('&#2547 '+data.amount); // print coupon amount
                    $('#discountAmount').val(data.amount);
                    var discountAmount  = $('#discountAmount').val();
                    var subToral  = $('#subTotalAmount').val();
                     $('#totalAmount').html('&#2547 '+parseInt(subToral-discountAmount));
                } else if ((data.status === 'expired') || (data.status === 'error') || (data.status === 'invalid'))
                {
                    toastr.error(data.message);
                    $('#couponDiscountDiv').removeClass('show-div').addClass('hide-div'); //show coupon amount div
                    $('#discountAmount').val(0);
                    var subTotal  = $('#subTotalAmount').val();
                    $('#totalAmount').html('&#2547 '+subTotal);
                }
            },
            error: function (){
                toastr.error('something went wrong, please try again....');
            },
        });
    } else {
        toastr.error('Please insert your coupon code first.');
    }

});
// coupon section end

// update cart
// $('#qtyUpdate').on('click',function (){
// $('#updateCart').submit(function (){
$(document).on('click','#qtyUpdate',function (){
    event.preventDefault();
    // var data    = $('#updateCart').serialize();
     var qty    = $('#qty').val();
     var id    = $('#cartId').val();
     var token    = $('meta[name="csrf-token"]').attr('content');
    $.ajax({
        url: baseurl+'cart/cart-update',
        method: 'POST',
        dataType: 'JSON',
        // data: data,
        data: {'qty':qty,'id':id,'_token':token},
        success: function (data){
            toastr.success(data);
            // append cart page here
            viewCart();
            hoverCart();
            if ($(window).width() < 991)
            {
                mobileCartSow();

            }
        },
        error: function (){
            toastr.error('something wrong....');
        },
    });
});
// delete product from cart
$(document).on('click','#delCartProduct', function (){
    event.preventDefault();
    var conf = confirm('Are You Sure Delete this?');
    if (conf)
    {
        var id  = $(this).attr('data-id');
        $.ajax({
            url: baseurl+'cart/cart-item-delete/'+id,
            method: 'GET',
            dataType: 'JSON',
            success: function (data){
                // console.log(data);
                toastr.error(data);
                // append cart page here
                viewCart();
                hoverCart();
                if ($(window).width() < 991)
                {
                    mobileCartSow();

                }
            },
            error: function (){
                toastr.error('something wrong....');
            },
        });
    }

});
// refresh view cart or print content
$(document).ready(function (){
    setTimeout(function (){
        $('#printViewCart').append(loaderDiv);
        viewCart();
    },1500);
});

function viewCart ()
{
    $.ajax({
        url: baseurl+'cart/view',
        method: 'GET',
        dataType: 'JSON',
        beforeSend: function (){
            // $('#printViewCart').append(loaderDiv);
        },
        success: function (data){
            // console.log(data);
            if (data.count > 0)
            {
                appendData(data);
            } else {
                noProductView();
            }
        },
        complete: function (){
            $('.loader-icon').css('display', 'none');
        },
        error: function (){
            toastr.error('something wrong....');
        },
    });
}

function appendData (data)
{
    $total = 0;
    var div = '';
    div += '<div class="shopping_cart_area mt-60">\n' +
        '                <div class="container">\n' +
        '                    <div class="row">\n' +
        '                        <div class="col-12 mb-5 ">\n' +
        '                            <div class="card-title ">\n' +
        '                                <h3 class="text-center text-success">Cart Items <span class="text-danger ml-2">('+data.count+')</span> .</h3>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                    <div class="row">\n' +
        '                        <div class="col-12">\n' +
        '                            <div class="table_desc table-responsive">\n' +
        '                                <div class="cart_page ">\n' +
        '                                    <table class="">\n' +
        '                                        <thead class="bg-success text-white p-0 m-0">\n' +
        '                                        <tr>\n' +
        '                                            <th class="product_thumb">Image</th>\n' +
        '                                            <th class="product_name">Product</th>\n' +
        '                                            <th class="product-price">Unit Price</th>\n' +
        '                                            <th class="product_quantity">Quantity</th>\n' +
        '                                            <th class="product_total">SubTotal</th>\n' +
        '                                            <th class="product_remove">Delete</th>\n' +
        '                                        </tr>\n' +
        '                                        </thead>\n' +
        '                                        <tbody>\n';
        $.each(data.items, function (key, item){
    div +=  '                                            <tr>\n' +
            '                                                <td class="product_thumb">\n' +
            '                                                    <img src="'+baseurl+item.attributes.image+'" style="height: 50px;width: 60px"/>\n' +
            '                                                </td>\n' +
            '                                                <td class="product_name">\n' +
            '                                                    '+item.name +
            '                                                    <p>Size: '+item.attributes.size+', Color: '+item.attributes.color+' </p>\n' +
            '                                                </td>\n' +
            '                                                <td class="product-price"> '+item.price+'</td>';
    div +=  '                                                <form action="'+baseurl+'cart/update-cart" id="updateCart" method="POST">';
    div +=  '                                                    <td class="product_quantity">';
    div +=  '                                                        <input type="number" name="qty" id="qty" min="1"  value="'+item.quantity+'" >';
    div +=  '                                                        <input type="hidden" name="id" id="cartId" value="'+item.id+'" >';
    // div +=  '                                                        <button type="submit" class="btn btn-outline-success" id="qtyUpdate" title="Update"><i class="fa fa-refresh"></i></button>';
    div +=  '                                                        <button type="button" class="btn btn-outline-success" id="qtyUpdate" title="Update"><i class="fa fa-refresh"></i></button>';
    div +=  '                                                    </td>';
    div +=  '                                                </form>';
        var subTotal    = item.quantity*item.price;
    // div +=  '                                                <td class="product_total">'+let subTotal = item.quantity*item.price+'</td>\n' +
    div +=  '                                                <td class="product_total">'+subTotal+'</td>\n' +
            '                                                <td class="product_remove"><a href="#" data-id="'+item.id+'" id="delCartProduct"><i class="fa fa-trash"></i></a></td>\n' +
            // '                                                <td class="product_remove"><a href="'+baseurl+'cart/cart-item-delete/'+item.id+'" data-id="'+item.id+'" id="delCartProduct"><i class="fa fa-trash"></i></a></td>\n' +
            '                                            </tr>\n';

        $total   = parseInt($total+subTotal);
        });
    div +=  '                                        </tbody>\n' +
        '                                    </table>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                    <!--coupon code area end-->\n' +
        '                    <div class="coupon_area">\n' +
        '                        <div class="row">\n' +
        '                            <div class="col-lg-6 col-md-6">\n' +
        '                                <div class="coupon_code left">\n' +
        '                                    <h3>Coupon</h3>\n' +
        '                                    <div class="coupon_inner">\n' +
        '                                        <p>Enter your coupon code if you have one.</p>\n' +
        '                                        <input placeholder="Coupon code" id="coupon" type="text">\n' +
        '                                        <button type="submit" id="applyCoupon">Apply coupon</button>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                            <div class="col-lg-6 col-md-6">\n' +
        '                                <div class="coupon_code right">\n' +
        '                                    <h3>Cart Totals</h3>\n' +
        '                                    <div class="coupon_inner">\n' +
        '                                        <div class="cart_subtotal">\n' +
        '                                            <p>Subtotal</p>\n' +
        '                                            <p class="cart_amount">&#2547 '+$total+'</p>\n' +
        '                                            <input type="hidden" id="subTotalAmount" value="'+$total+'">\n' +
        '                                        </div>\n' +
        '                                        <div class="hide-div" id="couponDiscountDiv">\n' +
        '                                            <div class="cart_subtotal" >\n' +
        '                                                <p>Coupon Discount</p>\n' +
        '                                                <p class="cart_amount" id="couponDiscountAmount"></p>\n' +
        '                                                <input type="hidden" id="discountAmount">\n' +
        '                                            </div>\n' +
        '                                        </div>\n' +
        '                                        <div class="cart_subtotal">\n' +
        '                                            <p>Total</p>\n' +
        '                                            <p class="cart_amount" id="totalAmount">&#2547 '+$total+'</p>\n' +
        '                                        </div>\n' +
        '                                        <div class="checkout_btn float-right">\n' +
        '                                            <a href="'+baseurl+'checkout">Proceed to Checkout</a>\n' +
        '                                        </div>\n' +
        '                                        <div class="shopping_btn">\n' +
        '                                            <a class="text-capitalize" href="javascript:void(0)" id="contShoping">continue shopping</a>\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </div>\n' +
        '            </div>';
    $('#printViewCart').empty().append(div);
}

function noProductView()
{
    var div = '';
    div += '<section class="section" id="cart_empty_section">\n' +
        '                <div class="container">\n' +
        '                    <div class="row justify-content-center">\n' +
        '                        <div class="col-md-8">\n' +
        '                            <div class="text-center order_complete">\n' +
        '                                <i class="ti-shopping-cart"></i>\n' +
        '                                <div class="heading_s1">\n' +
        '                                    <h3 class="font-weight-bold f-s-30">Your cart is empty !</h3>\n' +
        '                                </div>\n' +
        '                                <p>You cart is empty, Click continue shopping</p>\n' +
        '                                <a href="'+baseurl+'" class="btn btn-danger btn-fill-out" style="background-color: #FF324D">Continue Shopping</a>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </div>\n' +
        '            </section>';
    $('#printViewCart').empty().html(div);
}

// $(document).on('click','#qtyUpdate',function (){
//     event.preventDefault();
//     alert('hi fuccky');
// })
