// Note: cart section  view

// cart/load-cart
$(document).ready(function () {
    // window.setInterval(function (){
    window.setTimeout(function (){
        runCart ();
        // hoverCart ();

    },1000);


});
$('#hoverCart').hover(function () {
    hoverCart();
});
function hoverCart ()
{

    $.ajax({
        url: baseurl+'cart/load-cart-ajax',
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {

            appen (data);

        }
    });
}

function runCart ()
{
    $.ajax({
        url: baseurl+'cart/load-cart-ajax-hover',
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            $('.total_item').html(data);
            var result = $('#hoverCart');
            result.empty();
            var div = '';
            if (data === 0)
            {
                div += '<i class="zmdi zmdi-shopping-basket"></i> 0 <span>item</span>';
            } else {
                div += '<i class="zmdi zmdi-shopping-basket"></i> <span>' + data + ' items ' +  '</span>';
            }
            result.html(div);

        }
    });
}





// delete product with ajax
function deleteProductAjax(productId) {
    event.preventDefault();
    $.ajax({
        url: baseurl+'cart/cart-item-delete-ajax/'+productId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            toastr.warning('Product Deleted Successfully . ');
            if ($(window).width() < 991)
            {
                mobileCartSow();
            } else {
                appen (data);
            }
            if ((data.count<1)&&(window.location.href === baseurl+'view-cart'))
            {
                window.location.reload();
            }
        }
    });

}
function appen (data)
{
    var result = $('#miniCart');

    result.empty();

    var div = '';
    if (data.count === 0)
    {
        div += '<a href="javascript:void(0)" class="border-0" id="hoverCart"><i class="zmdi zmdi-shopping-basket"></i> <span>0 item</span> </a>';
    } else {
        div += '<a href="'+baseurl+'view-cart'+'" class="cart-link border-0" id="hoverCart"><i class="zmdi zmdi-shopping-basket"></i> <span>' + data.count + ' items ' +  '</span> </a>';


        div += '<div class="mini_cart" id="tests">';
        $.each(data.content, function (key, value) {

            div += '<div class="cart_item">';
            div += '<div class="cart_img">';
            div += '<a href="javascript:void(0)">';
            div += '<img src="'+baseurl + value.attributes.image + '" alt="">';

            div += '</a>';
            div += '</div>';
            div += '<div class="cart_info">';
            div += '<a href="javascript:void(0)">' + value.name + '</a>';

            div += '<span class="quantity">Qty: ' + value.quantity + '</span>';
            div += '<span class="price_cart">Tk ' + value.price + '</span>';
            div += '</div>';
            div += '<div class="cart_remove">';
            div += '<a href="" onclick="deleteProductAjax(' + value.id + ')"><i class="ion-android-close"></i></a>';
            div += '</div>';
            div += '</div>';


        });


        // products on cart show ends here
        div += '<div class="mini_cart_table">';
        div += '<div class="cart_total">';
        div += '<span>Subtotal:</span>';
        div += '<span class="price text-danger">Tk. ' + data.total.toLocaleString() + '</span>';

        div += '</div>';
        div += '</div>';

        // product subtotal ends here
        div += '<div class="mini_cart_footer">';
        div += '<div class="cart_button">';
        div += '<a href="'+baseurl+'view-cart'+'">View cart</a>';
        div += '<a href="'+baseurl+'checkout'+'">Checkout</a>';
        div += '</div>';
        div += '</div>';
        div += '</div>';
    }
    result.html(div);
}
// Note: cart section on mobile view
// mobile view cart mini_cart
function mobileCartSow()
{
    $.ajax({
        url: baseurl+'cart/mobile-cart-ajax',
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            $('.total_item').html(data.count);
            var xx = $('.xx');
            xx.empty();
            var div = '';

            $.each(data.content, function (key, value) {
                // $.each(value1, function (key, value) {
                div += '<div class="cart_item">';
                div += '<div class="cart_img">';
                div += '<a href="#">';
                div += '<img src="'+baseurl + value.attributes.image + '" alt="">';
                div += '</a>';
                div += '</div>';
                div += '<div class="cart_info">';
                div += '<a href="#">' + value.name + '</a>';
                // div+= '<a href="#">xxx</a>';
                div += '<span class="quantity">Qty: ' + value.quantity + '</span>';
                div += '<span class="price_cart">Tk ' + value.price + '</span>';
                div += '</div>';
                div += '<div class="cart_remove">';
                div += '<a href="" onclick="deleteProductAjax(' + value.id + ')"><i class="ion-android-close"></i></a>';
                // {{--div+= '<a href="{{ url('/cart/cart-item-delete-ajax') }}/'+data.id+'"><i class="ion-android-close"></i></a>';--}}
                div += '</div>';
                div += '</div>';

                // result.append(div);
                // });
            });

            // products on cart show ends here

            div += '<div class="mini_cart_table">';
            div += '<div class="cart_total">';
            div += '<span>Subtotal:</span>';
            div += '<span class="price text-danger">Tk. ' + data.total.toLocaleString() + '</span>';
            // div+= '<span class="price">Tk. 100</span>';
            div += '</div>';
            div += '</div>';

            // product subtotal ends here
            div += '<div class="mini_cart_footer">';
            div += '<div class="cart_button">';
            div += '<a href="'+baseurl+'view-cart'+'">View cart</a>';
            div += '<a href="'+baseurl+'checkout'+'">Checkout</a>';
            div += '</div>';
            div += '</div>';
            div += '</div>';

            xx.html(div);
        }
    });
    $('.xx').show();
}
// cart show hide on mobile view
