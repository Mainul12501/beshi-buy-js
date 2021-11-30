// print explore sales items
$(document).ready(function (){
    $('#exploreDeals').append(loaderDiv);
    setTimeout(function (){
        $.ajax({
            url: baseurl+'get-home-page-explore-sales',
            method: 'GET',
            dataType: 'JSON',
            beforeSend: function (){
                $('#exploreDeals').append(loaderDiv);
            },
            success: function (data)
            {
                if (data.length > 0)
                {
                    // empty Product parent div
                    var productDiv  = $('#exploreDeals');
                    productDiv.empty();

                    var div = '';
                    div += '<div class="product_carousel product_column4 owl-carousel" >';
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

                        div +=    '                                        <span class="old_price">'+(product.regular_price > 0) ? product.regular_price : ""+'</span>';

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

                    productDiv.html(div);
                    activeOwlCarousal4();
                } else {
                    $('#hideExploreSales').hide();
                }
            },
            complete: function ()
            {
                $('.loader-icon').css('display', 'none');
            },
            error: function (){
                toastr.error('Something went wrong. please try again.');
            }
        })
    }, 500);
});


// append products from controller
$(function (){
    $('#exploreDeals').append(loaderDiv);
    setTimeout(function (){
        $.ajax({
            url: baseurl+'get-home-page-products-from-controller',
            method: 'GET',
            // dataType: 'JSON',
            beforeSend: function (){
                $('#layoutAppend').append(loaderDiv);
            },
            success: function (data)
            {
                // console.log(data);
                $('#layoutAppend').html(data);
                activeOwlCarousal4();
                activeOwlCarousal3();
            },
            complete: function ()
            {
                $('.loader-icon').css('display', 'none');
            },
            error: function (){
                toastr.error('Something went wrong. please reload the page again.');
            }
        })
    }, 500);
})

// get products after page loading accroding to front layout
// $(function (){
//     setTimeout(function (){
//         $.ajax({
//             url: baseurl+'get-home-page-products',
//             method: 'GET',
//             dataType: 'JSON',
//             beforeSend: function (){
//                 $('#layoutAppend').append(loaderDiv);
//             },
//             success: function (data)
//             {
//                 console.log(data);
//                 var div = '';
//                 $.each(data, function (key, layout){
//                     if (layout.layout_type === 3)
//                     {
//                         div += layoutType3(layout);
//                     } else if (layout.layout_type === 2)
//                     {
//                         div += layoutType2(layout);
//                     } else if (layout.layout_type === 1)
//                     {
//                         div += layoutType1(layout);
//                     }
//                 })
//                 // activeOwlCarousal4();
//                 $('#layoutAppend').empty().append(div);
//             },
//             complete: function ()
//             {
//                 $('.loader-icon').css('display', 'none');
//             },
//             error: function (){
//                 toastr.error('Something went wrong. please try again.');
//             }
//         })
//     },1000);
// })

function layoutType1 (data)
{
    var div = '';
    div += '<section class="new_product_area mb-50">\n' +
        '                        <div class="container">\n' +
        '                            <div class="row">\n' +
        '                                <div class="col-12">\n' +
        '                                    <div class="section_title">\n' +
        '                                        <h2 class="text-white p-3 text-center rounded-pill" style="background: #13b93d;width: 232px;font-size: 15px">'+data.category.name+'</h2>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                            <div class="new_product_two_container">\n' +
        '                                <div class="row no-gutters">\n' +
        '                                    <div class="col-lg-3 col-md-12">\n' +
        '                                        <div class="single_banner">\n' +
        '                                            <div class="banner_thumb border">\n' +
        '                                                <a href="'+baseurl+'category-product/'+data.category.slug+'">\n' +
        '                                                    <img src="'+data.category.image+'" class="w-100" style="height: 444px" alt="">\n' +
        '                                                </a>\n' +
        '                                            </div>\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-lg-9 col-md-12">\n' +
        '                                        <div class="" id="appendCatProducts'+data.category_id+'">\n' ;
        div += getProductsByCategory(data.category_id);
    div +='                                        </div>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </section>';
    // div += '<div id="banner'+data.category_id+'">\n' ;
    // if (data.ads_type === 0){
    //     var type    = 'catwise';
    //     div += banner(type,data.ads_layout,data.category_id);
    // } else if (data.ads_type === 1) {
    //     var type    = 'random';
    //     div += banner(type,data.ads_layout,data.category_id);
    // }
    // div += '                                </div>';
    return div;
}
function layoutType2 (data)
{
    var div ='';
    div += '<section class="new_product_area mb-50">\n' +
        '                        <div class="container">\n' +
        '                            <div class="row">\n' +
        '                                <div class="col-12">\n' +
        '                                    <div class="section_title">\n' +
        '                                        <h2 class="text-white p-3 text-center rounded-pill " style="background:#0b2e13;width: 232px;font-size: 15px;">'+data.category.name+'</h2>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                            <div class="new_product_two_container">\n' +
        '                                <div class="row no-gutters">\n' +
        '                                    <div class="col-lg-3 col-md-12">\n' +
        '                                        <div class="single_banner">\n' +
        '                                            <div class="banner_thumb border">\n' +
        '                                                <a href="'+baseurl+'category-product/'+data.category.slug+'">\n' +
        '                                                    <img src="'+data.category.image+'"   alt="" style="height: 380px" />\n' +
        '                                                </a>\n' +
        '                                            </div>\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-lg-9 col-md-12">\n' +
        '                                        <div class="" id="appendCatProducts'+data.category_id+'">';
        div += getProductsByCategory(data.category_id);
    div +='                                        </div>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </section>';
    // div += '<div id="banner'+data.category_id+'">\n' ;
    //     if (data.ads_type === 0){
    //         var type    = 'catwise';
    //     div += banner(type,data.ads_layout,data.category_id);
    //     } else if (data.ads_type === 1) {
    //         var type    = 'random';
    //     div += banner(type,data.ads_layout,data.category_id);
    //     }
    // div += '                                </div>';
    return div;
}
function layoutType3 (data)
{
    $.ajax({
        url: baseurl+'get-home-sub-category/'+data.category_id,
        method: 'GET',
        dataType: 'JSON',
        success: function (response){
            console.log(response);
            var div = '';
            div += '<section class="home_product_area mb-50">\n' +
                '                        <div class="container">\n' +
                '                            <div class="row">\n' +
                '                                <div class="col-12 ">\n' +
                '                                    <div class="product_header">\n' +
                '                                        <div class="section_title">\n' +
                '                                            <h2 class="text-white p-3 rounded-pill" style="background: rgba(55,179,21,0.83);font-size: 15px" >'+data.category.name+'</h2>\n' +
                '                                        </div>\n' +
                '                                        <div class="product_tab_button">\n' +
                '                                            <ul class="nav" role="tablist">' ;
            $.each(response, function (key, subCategory){
                div += '                                                    <li>\n' +
                '                                                        <a class="'+key===0 ? 'active' : "" +'" data-toggle="tab" href="#'+subCategory.slug+key+'" role="tab" aria-controls="leftop1" aria-selected="true">\n' +
                    '                                                            '+subCategory.sub_category_name+'\n' +
                    '                                                        </a>\n' +
                    '                                                    </li>\n' ;
            })
            div  +='                                            </ul>\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                    <form action=""  enctype="multipart/form-data" id="addCartForm">\n' +
                '                                        '+$('meta[name="csrf-token"]').attr('content')+'' +
                '                                        <div class="tab-content ">\n';
            $.each(response, function (index, subCategory){
                div  += '                                                <div class="tab-pane fade show '+index === 0 ? 'active' : "" +'" id="'+subCategory.slug+index+'" role="tabpanel">\n' ;
                div += getProductsBySubCategory(subCategory.slug+index, subCategory.id);
                div  +=    '                                                </div>\n' ;
            })
            div +=  '                                        </div>\n' +
                '                                    </form>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </section>';
            // div += '<div id="banner'+data.category_id+'">\n' ;
            // if (data.ads_type === 0){
            //     var type    = 'catwise';
            // div += banner(type,data.ads_layout,data.category);
            // } else if (data.ads_type === 1) {
            //     var type    = 'random';
            // div += banner(type,data.ads_layout,data.category);
            // }
            // div += '                                </div>';
            return div;
        },
        error: function (){
            toastr.error('failed to get sub-category product for '+data.category_id+' category.');
        }
    });

}
function getProductsByCategory(categoryId)
{
    $.ajax({
        url: baseurl+'get-products-by-category/'+categoryId,
        dataType: 'JSON',
        method: 'GET',
        success: function (data){
            console.log(data);
            var div = '';
            div += '<div class="product_carousel product_column3 owl-carousel">\n' +
                $.each(data, function (key, product){
                  div   += '                                                <div class="single_product">\n' +
                      '                                                    <div class="product_thumb">\n' +
                      '                                                        <a href="'+baseurl+'product-details/'+product.slug+'">\n' +
                      '                                                            <img src="'+baseurl+product.image+'" class="px-5" alt="" style="height:170px" />\n' +
                      '                                                        </a>\n' ;
                      if((product.discount !== null) || (product.discount !== 'undefined'))
                      {
                        div += '                                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">\n' +
                            '                                                                <span class="label_sale"> - '+product.discount+' % </span>\n' +
                            '                                                            </div>\n';
                      }
                div +='                                                        <div class="quick_button">\n' +
                      '                                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="'+product.id+'"> <i class="zmdi zmdi-eye"></i></a>\n' +
                      '                                                        </div>\n' +
                      '                                                    </div>\n' +
                      '                                                    <div class="product_content">\n' +
                      '                                                        <div class="product_name" >\n' +
                      '                                                            <h3><a href="'+baseurl+'product-details/'+product.slug+'">'+product.name+'</a></h3>\n' +
                      '                                                        </div>\n' +
                      '                                                        <div class="price_box">\n' ;
                    if((product.discount !== null) || (product.discount !== 'undefined'))
                    {
                        div += '                                                <span class="old_price">'+product.regular_price+'</span>\n' ;
                    }
                div +='                                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> '+product.sell_price+'</span>\n' +
                      '                                                        </div>\n' +
                      '                                                        <div class="action_links">\n' +
                      '                                                            <ul>\n' +
                      // '                                                                <li class="add_to_cart"><a href="'+baseurl+'product-details/'+product.slug+'" onclick="productId('+product.id+')" >add to cart</a></li>\n' +
                      '                                                                <li class="add_to_cart"><a href="'+baseurl+'product-details/'+product.slug+'" >add to cart</a></li>\n' +
                      '                                                            </ul>\n' +
                      '                                                        </div>\n' +
                      '                                                    </div>\n' +
                      '                                                </div>';
                })
            div +=    '                                        </div>';
            // $('#appendCatProducts'+categoryId).empty().append(div);
            return div;
        },
        error: function (){
            toastr.error('Failed to get Products for '+categoryId+' category.');
        }
    })
}
function getProductsBySubCategory (appendId, subCategoryId)
{
    $.ajax({
        url: baseurl+'get-products-by-sub-category/'+subCategoryId,
        method: 'GET',
        dataType: 'JSON',
        success: function (data){
            console.log(data);
            var div = '';
            $.each(data, function (key, product){
                div += '                                                    <div class="product_carousel product_column4 owl-carousel">\n' +
                    '                                                            <div class="single_product">\n' +
                    '                                                                <div class="product_thumb">\n' +
                    '                                                                    <a href="'+baseurl+'product-details/'+product.slug+'">\n' +
                    '                                                                        <img src="'+baseurl+product.image+'" class="px-5" alt="" style="height:170px" />\n' +
                    '                                                                    </a>\n' ;
                if((product.discount !== null) || (product.discount !== 'undefined')){
                    div += '                                                                        <div class="label_product position-absolute" style="top:0px;right: 29px;">\n' +
                        '                                                                            <span class="label_sale"> - '+product.discount+' % </span>\n' +
                        '                                                                        </div>\n' ;
                }
                div +='                                                                    <div class="quick_button">\n' +
                    // '                                                                        <a href="{{route(\'product-details\',[\'slug\'=>$product->slug])}}" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>\n' +
                    '                                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="'+product.id+'"> <i class="zmdi zmdi-eye"></i></a>\n' +
                    '                                                                    </div>\n' +
                    '                                                                </div>\n' +
                    '                                                                <div class="product_content ">\n' +
                    '                                                                    <div class="product_name">\n' +
                    '                                                                        <h3><a href="'+baseurl+'product-details/'+product.slug+'">'+product.name+'</a></h3>\n' +
                    '                                                                    </div>\n' +
                    '                                                                    <div class="price_box">\n' ;
                if((product.discount !== null) || (product.discount !== 'undefined')){
                    div += '                                                                 <span class="old_price">'+product.regular_price+'</span>\n' ;
                }
                if((product.discount !== null) || (product.discount !== 'undefined')){
                    div += '                                                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> '+product.sell_price+'</span>\n';
                }
                div +=    '                                                                    </div>\n' +
                    '                                                                    <div class="action_links">\n' +
                    '                                                                        <ul>\n' +
                    // '                                                                            <li class="add_to_cart"><a  href="'+baseurl+'product-details/'+product.slug+'" onclick="productId('+product.id+')"  class="abc ">add to cart</a></li>\n' +
                    '                                                                            <li class="add_to_cart"><a  href="'+baseurl+'product-details/'+product.slug+'"  class="abc ">add to cart</a></li>\n' +
                    '                                                                        </ul>\n' +
                    '                                                                    </div>\n' +
                    '                                                                </div>\n' +
                    '                                                            </div>\n' +
                    '                                                    </div>\n' ;
            })
            // $(appendId).empty().append(div);
            return div;
        }, error: function (){
            toastr.error('failed to get sub-category product for '+subCategoryId+' sub-category.');
        }
    })
}
function banner(type,bannerCount,category)
{
    if (category.ads_type !== 0){
        $.ajax({
            url: baseurl+'get-ads-data/'+type+'/'+bannerCount+'/'+category.id,
            method: 'GET',
            dataType: 'JSON',
            success: function (banner) {
                console.log(banner);
                var div = '';

                div += '<div class="banner_area banner_column2 mb-50">\n' +
                    '                        <div class="container">\n' +
                    '                            <div class="row">\n' ;
                $.each(banner, function (key, ads){
                    if ((ads.length > 0) && (ads.length === 1)){
                        div += '                                <div class="col-lg-12 col-md-12">\n' ;
                    } else if ((ads.length > 0) && (ads.length === 2)) {
                        div += '                                <div class="col-lg-6 col-md-6">\n' ;
                    } else if ((ads.length > 0) && (ads.length === 3)) {
                        div += '                                <div class="col-lg-4 col-md-4">\n' ;
                    } else if ((ads.length > 0) && (ads.length === 4)) {
                        div += '                                <div class="col-lg-3 col-md-3">\n' ;
                    }

                    div += '                                    <div class="single_banner">\n' +
                        '                                        <div class="banner_thumb">\n' +
                        '                                            <a href="'+ads.product_url+'"><img src="'+baseurl+ads.big_image+'" alt=""></a>\n' +
                        '                                        </div>\n' +
                        '                                    </div>\n' +
                        '                                </div>\n' ;
                })
                div  += '                            </div>\n' +
                    '                        </div>\n' +
                    '                    </div>';


                // $('#banner'+categoryId).empty().append(div);
                return div;
            },
        });
    } else {
        var div = '';
        return div;
    }

}



// needed
function activeOwlCarousal3()
{
    // category product_column3 activation
    if($(window).width()<991){
        $('.product_column3').on('changed.owl.carousel initialized.owl.carousel', function (event) {
            $(event.target).find('.owl-item').removeClass('last').eq(event.item.index + event.page.size - 1).addClass('last')}).owlCarousel({
            autoplay: true,
            loop: true,
            nav: true,
            autoplayTimeout: 12000,
            items: 3,
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
            }
        });
    }else {
        $('.product_column3').on('changed.owl.carousel initialized.owl.carousel', function (event) {
            $(event.target).find('.owl-item').removeClass('last').eq(event.item.index + event.page.size - 1).addClass('last')}).owlCarousel({
            autoplay: false,
            loop: true,
            nav: true,
            autoplayTimeout: 5000,
            items: 3,
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



            }
        });
    }
}
function activeOwlCarousal4()
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

