// Note: shorting section starts [category/sub-category page sorting - Type 1] not using r8 now -> cat-prod.blade
// get products by brand
function productsByBrand(brandId) {
    event.preventDefault();
    $.ajax({
        url: baseurl+'products/get-product-by-brand/'+brandId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            // console.log(data);
            var products = $('#productsShow');
            products.empty();
            var div = '';
            $.each(data.data, function (key, value) {
                div += '<div class="col-lg-4 col-md-4 col-12 ">';
                div += '<div class="single_product">';
                div += '<div class="product_thumb">';
                div += '<a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'"><img src="'+baseurl+value.image+'" alt=""></a>';
                div += '<div class="label_product">';
                div += '<span class="label_sale">sale</span>';
                div += '</div>';
                div += '<div class="quick_button">';
                div += '<a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content grid_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                // div += '<h3><a href="{{ url('/product/product-details/') }}'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content list_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="product_desc">';
                div += '<p class="text-justify">'+value.long_description+'</p>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
            });

            // div += '<div class="shop_toolbar t_bottom">';
            // div += '<div class="pagination">';
            // div += '<ul>';
            // {{--                div += '@if(isset($brandProducts))';--}}
            // {{--div += '<li class="current">{{ $brandProducts->links() }}</li>';--}}
            // {{--div += '@endif';--}}

            // div += '</ul>';
            // div += '</div>';
            // div += '</div>';

            products.append(div);

        },
    });
}
// get products by color
function productsByColor(colorId) {
    event.preventDefault();
    $.ajax({
        url: baseurl+'products/get-product-by-color/'+colorId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            // console.log(data);
            var products = $('#productsShow');
            products.empty();
            var div = '';
            $.each(data, function (key, value) {
                div += '<div class="col-lg-4 col-md-4 col-12 ">';
                div += '<div class="single_product">';
                div += '<div class="product_thumb">';
                div += '<a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'"><img src="'+baseurl+value.image+'" alt=""></a>';
                // div += '<a href="{{ url('/product/product-details/') }}'+value.id+'/'+value.name+'"><img src="{{ asset('/') }}'+value.image+'" alt=""></a>';
                div += '<div class="label_product">';
                div += '<span class="label_sale">sale</span>';
                div += '</div>';
                div += '<div class="quick_button">';
                div += '<a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content grid_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content list_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="product_desc">';
                div += '<p class="text-justify">'+value.long_description+'</p>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
            });

            products.html(div);

        },
    });
}

// product filtering by price+name+asc
/*this feature is not used in our site right now. we will use it later. so keep these codes*/
function productShorting(selectValue, categoryId) {

    $.ajax({
        url: baseurl+'products/filtering/'+selectValue+'/'+categoryId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data) {
            var products = $('#productsShow');
            products.empty();
            var div = '';
            $.each(data, function (key, value) {
                div += '<div class="col-lg-4 col-md-4 col-12 ">';
                div += '<div class="single_product">';
                div += '<div class="product_thumb">';
                div += '<a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'"><img src="'+baseurl+value.image+'" alt=""></a>';
                div += '<div class="label_product">';
                div += '<span class="label_sale">sale</span>';
                div += '</div>';
                div += '<div class="quick_button">';
                div += '<a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content grid_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '</div>';
                div += '<div class="product_content list_content">';
                div += '<div class="product_name">';
                div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                div += '</div>';
                div += '<div class="product_rating">';
                div += '<ul>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="price_box">';
                div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                div += '</div>';
                div += '<div class="action_links">';
                div += '<ul>';
                div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                div += '</ul>';
                div += '</div>';
                div += '<div class="product_desc">';
                div += '<p class="text-justify">'+value.long_description+'</p>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
                div += '</div>';
            });

            products.html(div);
        }
    });
}
// price slider like filtering site
/*this feature is not used in our site right now. we will use it later. so keep these codes*/
$(document).ready(function () {
    //     filter_data();
    function filter_data() {
        var minimum_price = $('#hidden_minimum_price').val();
        var maximum_price = $('#hidden_maximum_price').val();
        var category_id = $('#category_id').val();
        $.ajax({
            url: baseurl+'/products/products-price-filter',
            method:'POST',
            dataType:'JSON',
            data:{minimum_price:minimum_price, maximum_price:maximum_price, category_id:category_id, _token: '{{csrf_token()}}'},
            success: function (data) {
                var products = $('#productsShow');
                products.empty();
                var div = '';
                $.each(data, function (key, value) {
                    div += '<div class="col-lg-4 col-md-4 col-12 ">';
                    div += '<div class="single_product">';
                    div += '<div class="product_thumb">';
                    div += '<a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'"><img src="'+baseurl+value.image+'" alt=""></a>';
                    div += '<div class="label_product">';
                    div += '<span class="label_sale">sale</span>';
                    div += '</div>';
                    div += '<div class="quick_button">';
                    div += '<a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>';
                    div += '</div>';
                    div += '</div>';
                    div += '<div class="product_content grid_content">';
                    div += '<div class="product_name">';
                    div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                    div += '</div>';
                    div += '<div class="product_rating">';
                    div += '<ul>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '</ul>';
                    div += '</div>';
                    div += '<div class="price_box">';
                    div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                    div += '</div>';
                    div += '<div class="action_links">';
                    div += '<ul>';
                    div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                    div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                    div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                    div += '</ul>';
                    div += '</div>';
                    div += '</div>';
                    div += '<div class="product_content list_content">';
                    div += '<div class="product_name">';
                    div += '<h3><a href="'+baseurl+'product/product-details/'+value.id+'/'+value.name+'">'+value.name+'</a></h3>';
                    div += '</div>';
                    div += '<div class="product_rating">';
                    div += '<ul>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '<li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>';
                    div += '</ul>';
                    div += '</div>';
                    div += '<div class="price_box">';
                    div += '<span class="current_price">Tk. '+value.sell_price+'</span>';
                    div += '</div>';
                    div += '<div class="action_links">';
                    div += '<ul>';
                    div += '<li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>';
                    div += '<li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+value.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>';
                    div += '<li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>';
                    div += '</ul>';
                    div += '</div>';
                    div += '<div class="product_desc">';
                    div += '<p class="text-justify">'+value.long_description+'</p>';
                    div += '</div>';
                    div += '</div>';
                    div += '</div>';
                    div += '</div>';
                });

                products.html(div);

            }
        });
    }
    // {{--        var min = {!! json_encode($minPrice) !!}-1;--}}
    // {{--        var max = {!! json_encode($maxPrice) !!}+1;--}}
    // alert(max);
    $('#price_range').slider({
        animate: true,
        range:true,
        min:0,
        // min: min,
        max:65000,
        // max: max,
        values:[500, 65000],
        // step:500,
        stop:function(event, ui)
        {
            $('#price_show').html('Tk. '+ui.values[0] + ' - ' +'Tk. '+ ui.values[1]);
            $('#hidden_minimum_price').val(ui.values[0]);
            $('#hidden_maximum_price').val(ui.values[1]);
            filter_data();
        }
    });
});
// shorting section ends [category/sub-category page sorting - Type 1] not using r8 now -> cat-prod.blade
