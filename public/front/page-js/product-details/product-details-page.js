// product details icon show hide
$(window).scroll( function () {
    var x    = $(this).scrollTop();
    if (window.innerWidth >991)
    {
        if (x > 200)
        {
            $('#scrollHide').fadeIn();

        } else {
            $('#scrollHide').fadeOut();
        }
    } else {
        if (x > 400)
        {
            $('#scrollHide').fadeIn();

        } else {
            $('#scrollHide').fadeOut();
        }
    }

})

// print product related items
$(document).ready(function (){
    $('#product-details-related-products').append(loaderDiv);
    setTimeout(function (){
        $productSlug    = $('#productSlug').val();
        $.ajax({
            url: baseurl+'related-products/'+$productSlug,
            method: 'GET',
            dataType: 'JSON',
            beforeSend: function (){
                $('#product-details-related-products').append(loaderDiv);
            },
            success: function (data)
            {
                // console.log(data);
                // empty Product parent div
                var productDiv  = $('#product-details-related-products');
                productDiv.empty();

                var div = '';
                div += '<div class="product_carousel product_column4 owl-carousel" >';
                // div += '<div class="single_product">';
                $.each(data, function (index, product){
                    div += '<div class="single_product">';
                    div +=    '                            <div class="product_thumb">';
                    div +=    '                                <a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="product-page">';
                    div +=    '                                    <img src="'+baseurl+product.image+'" class="px-5" alt="" style="height: 170px">';
                    div +=    '                                </a>';
                    // '                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">\n' +
                    // '                                        <span class="label_sale"> - {{$relatedProduct->discount}} % </span>\n' +
                    // '                                    </div>\n' +
                    div +=    '                                 <div class="quick_button">';
                    div +=    '                                     <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="'+product.id+'"> <i class="zmdi zmdi-eye"></i></a>';
                    div +=    '                                </div>';
                    div +=    '                            </div>';
                    div +=    '                            <div class="product_content">';
                    div +=    '                                <div class="product_name">';
                    div +=    '                                    <h3><a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="product-page">'+product.name+'</a></h3>';
                    div +=    '                                </div>';
                    div +=    '                                <div class="price_box">';

                    div +=    '                                        <span class="old_price">'+(product.regular_price > 0 ? product.regular_price : "")+'</span>';

                    div +=    '                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> '+product.sell_price+'</span>';
                    div +=    '                                </div>';
                    // '                                <div class="product_variant color">\n' +
                    // '                                                    <a  onclick="showMe({{$relatedProduct->id}})" class="text-primary sc-hide{{ $relatedProduct->id }} ">view size and color</a>\n' +
                    // '                                                    <div class="hide-me sico-div{{ $relatedProduct->id }}">\n' +
                    // '                                                        <a  onclick="hideMe({{ $relatedProduct->id }})" class="text-danger float-right mr-2">X</a>\n' +
                    // '                                                        <?php\n' +
                    // '                                                        $productSizes =\\App\\Models\\ProductSize::where(\'product_id\',$relatedProduct->id)->orderBy(\'id\',\'desc\')->get();\n' +
                    // '                                                        ?>\n' +
                    // '                                                        <ul class="size{{ $relatedProduct->id }}" >\n' +
                    // '                                                            @foreach($productSizes as $productSize)\n' +
                    // '                                                                <?php\n' +
                    // '                                                                $productSizeName = \\App\\Models\\Size::find($productSize->size_id)->name;\n' +
                    // '                                                                ?>\n' +
                    // '\n' +
                    // '                                                                <li class="border-0 " style="font-size: 10px" >\n' +
                    // '                                                                    <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" >{{$productSizeName}}\n' +
                    // '                                                                </li>\n' +
                    // '                                                            @endforeach\n' +
                    // '                                                        </ul>\n' +
                    // '                                                        <ul class="color{{ $relatedProduct->id }}">\n' +
                    // '                                                            <?php\n' +
                    // '                                                            $productColors  = \\App\\Models\\ProductColor::where(\'product_id\', $relatedProduct->id)->get();\n' +
                    // '                                                            ?>\n' +
                    // '                                                            @foreach($productColors as $col=>$productColor)\n' +
                    // '                                                                <?php\n' +
                    // '                                                                $color      = \\App\\Models\\Color::where(\'id\', $productColor->color_id)->select(\'name\')->first();\n' +
                    // '                                                                ?>\n' +
                    // '                                                                <li class="border-0" style="font-size: 10px">\n' +
                    // '                                                                    <input type="radio" name="color" {{ $col === 0 ? \'checked\' : \'\' }} class="m-1" value="{{ $color->name }}"> {{ $color->name }}\n' +
                    // '                                                                </li>\n' +
                    // '                                                            @endforeach\n' +
                    // '\n' +
                    // '                                                        </ul>\n' +
                    // '                                                    </div>\n' +
                    // '                                                </div>\n' +
                    div +=    '                                <div class="action_links">';
                    div +=    '                                    <ul>';
                    // '                                        <li class="add_to_cart"><a href="javascript:void(0)" onclick="productId('+product.id+')" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> shop now</a></li>\n' +
                    div +=    '                                        <li class="add_to_cart"><a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="product-page" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> shop now</a></li>';
                    div +=    '                                    </ul>';
                    div +=    '                                </div>';
                    div +=    '                            </div>';
                    div +=    '                        </div>';
                });
                div += '</div>';
                // $('.product-details-related-products').empty().append(div);
                // productDiv.append(div);
                productDiv.html(div);
                activeOwlCarousal();
            },
            complete: function ()
            {
                $('.loader-icon').css('display', 'none');
            },
            error: function (){
                toastr.error('Something went wrong. please try again.');
            }
        })
    }, 1000);
});

function activeOwlCarousal()
{
    if(($(window).width()<991)){
        $('.product_column4').on('changed.owl.carousel initialized.owl.carousel', function (event) {
            $(event.target).find('.owl-item').removeClass('last').eq(event.item.index + event.page.size - 1).addClass('last')}).owlCarousel({
            autoplay: true,
            loop: true,
            nav: true,
            autoplayTimeout: 12000,
            items: 4,
            dots:false,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                },
                576:{
                    items:2,
                },
                768:{
                    items:3,
                },
                992:{
                    items:4,
                },

            }
        });
    }else {
        $('.product_column4').on('changed.owl.carousel initialized.owl.carousel', function (event) {
            $(event.target).find('.owl-item').removeClass('last').eq(event.item.index + event.page.size - 1).addClass('last')}).owlCarousel({
            autoplay: false,
            loop: true,
            nav: true,
            autoplayTimeout: 5000,
            items: 4,
            dots:false,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                },
                576:{
                    items:2,
                },
                768:{
                    items:3,
                },
                992:{
                    items:4,
                },

            }
        });
    }
}

// product details product video width control
$(document).ready(function () {
    $('#productVideo iframe').removeAttr('width');
    $('#productVideo iframe').attr('width', '95%');
});
