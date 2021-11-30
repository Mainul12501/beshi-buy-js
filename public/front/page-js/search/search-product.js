var productTypeSlug    = $("#subCategorySlug").val();
$(function (){
    $('.print-products-cat').append(loaderDiv);
});
// get products from category - ajax
$(document).ready(function (){
    setTimeout(function (){
        var slug    = $("#subCategorySlug").val();
        getTypeWiseProduct(slug);
    },1000);
});
function getTypeWiseProduct (slug)
{
    $.ajax({
        // url: baseurl+'products/'+productTypeSlug,
        url: baseurl+'get-result-products/'+slug,
        method: 'GET',
        dataType: 'JSON',
        beforeSend: function (){
            $('.print-products-cat').append(loaderDiv);
        },
        success: function (data){
            // console.log(data);
            if (data.products.length >0)
            {
                $('#typeName').text(data.productTypeSlug);
                $('#type').text(data.type);
                pagination(data.products);
                // $('#printCatErrorMsg').css('display', 'none');
            } else {
                printCatErrorMsg();
            }
        },
        complete: function (){
            $('.loader-icon').css('display', 'none');
        },
        error: function (){
            toastr.error('something wrong....');
        },
    })
}
// pagination test
function pagination(data)
{
    $('#paginate').pagination({
        dataSource: data,
        pageSize: 12,
        callback: function(data, pagination) {
            var div = appendProducts(data);
            $('.print-products-cat').html(div);
        }
    });
}
// print no product error msg
function printCatErrorMsg()
{
    var parentDiv   = $('#printCatErrorMsg');
    parentDiv.empty();
    var div = '';
    div += '<div class="border">\n' +
        '                                <img src="'+baseurl+'front/assets/img/sorry_img.jpg" class="w-100" style="height: 270px"/>\n' +
        '                                <h3 class="text-center text-danger font-italic py-2"> There is No Product Found Here !! Please try Another  .</h3>\n' +
        '                            </div>';
    parentDiv.html(div);
}
// append products in page
function appendProducts (data)
{
    // empty Product parent div
    var productDiv  = $('.print-products-cat');
    productDiv.empty();
    var div = '';
    // div += '<div>';
    $.each(data, function (index, product){
        div     +=  '<div class="col-lg-3 col-md-3 col-12">';
        div +=    '                                <div class="single_product">' ;
        div +=    '                                    <div class="product_thumb">' ;
        div +=    '                                        <a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="product-page">' ;
        div +=    '                                            <img src="'+baseurl+product.image+'" class="px-5"  alt="" style="height: 170px;"/>' ;
        div +=    '                                        </a>' ;
        // '                                        @isset($product->discount)\n' +
        // '                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">\n' +
        // '                                                <span class="label_sale"> - {{$product->discount}} % </span>\n' +
        // '                                            </div>\n' +
        // '                                        @endisset\n' +
        div +=    '                                        <div class="quick_button">';
        // '                                            <a href="'+baseurl+'product/'+product.slug+'"  title="view"> <i class="zmdi zmdi-eye"></i></a>\n' +
        div +=    '                                              <a href="#" data-toggle="modal" data-target="#modal_box" class="quickView" data-id="'+product.id+'" data-original-title="quick view" title="quick view"> <i class="zmdi zmdi-eye"></i></a>';
        div +=    '                                        </div>';
        div +=    '                                    </div>';
        div +=    '                                    <div class="product_content grid_content">';
        div +=    '                                        <div class="product_name">';
        div +=    '                                            <h3><a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="product-page">'+product.name+'</a></h3>';
        div +=    '                                        </div>';
        div +=    '                                        <div class="price_box">';
        div +=    '                                                <span class="old_price">'+product.regular_price+'</span>';
        div +=    '                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> '+product.sell_price+'</span>';
        div +=    '                                        </div>';
        div +=    '                                        <div class="action_links">';
        div +=    '                                            <ul>';
        div +=    '                                                <li class="add_to_cart font-12"><a href="'+baseurl+'product/'+product.slug+'" data-slug="'+product.slug+'" class="text-uppercase product-page"> shop now</a></li>';
        div +=    '                                            </ul>';
        div +=    '                                        </div>';
        div +=    '                                    </div>';
        div +=    '                                </div>';
        div +=    '                            </div>';
    });
// div += '</div>';
    // productDiv.append(div);


    return div;
}
$(document).on('click','.product-page', function (){
    event.preventDefault();
    var productSlug = $(this).attr('data-slug');
    window.location.href    = baseurl+'product/'+productSlug;
})
