
$(function (){
    $('.parent-div').append(loaderDiv);
});
$(document).ready(function (){
    setTimeout(function (){
        $.ajax({
            url: baseurl+'get-latest-products',
            method: 'GET',
            dataType: 'JSON',
            beforeSend: function (){
                $('.parent-div').append(loaderDiv);
            },
            success: function (data){
                // console.log(data);
                if (data.length >0)
                {
                    appendData(data);

                } else {
                    printErrorMsg();
                }
            },
            complete: function (){
                $('.loader-icon').css('display', 'none');
            },
            error: function (){
                toastr.error('something wrong....');
            },
        })
    },1500);
})
function appendData(data)
{
    var div = '';
    div += '<div class="row no-gutters shop_wrapper">';
    $.each(data, function (key, product){
        div += '<div class="col-lg-3 col-md-3 col-12">\n' +
            '                                        <div class="single_product">\n' +
            '                                            <div class="product_thumb">\n' +
            '                                                <a href="'+baseurl+'product/'+product.slug+'">\n' +
            '                                                    <img src="'+baseurl+product.image+'" class="px-5"  alt="" style="height: 170px;"/>\n' +
            '                                                </a>\n' +

            // '                                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">\n' +
            // '                                                        <span class="label_sale"> - {{$product->discount}} % </span>\n' +
            // '                                                    </div>\n' +

            '                                                <div class="quick_button">\n' +

            '                                                    <a href="#" data-toggle="modal" data-target="#modal_box" class="quickView" data-id="'+product.id+'" title="quick view"> <i class="zmdi zmdi-eye"></i></a>\n' +
            '                                                </div>\n' +
            '                                            </div>\n' +
            '                                            <div class="product_content grid_content">\n' +
            '                                                <div class="product_name">\n' +
            '                                                    <h3><a href="'+baseurl+'product/'+product.slug+'">'+product.name+'</a></h3>\n' +
            '                                                </div>\n' +
            '                                                <div class="price_box">\n' +
            '                                                        <span class="old_price">'+product.regular_price+'</span>\n' +
            '                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> '+product.sell_price+'</span>\n' +
            '                                                </div>\n' +
            '                                                <div class="action_links">\n' +
            '                                                    <ul>\n' +
            '                                                        <li class="add_to_cart font-12"><a href="'+baseurl+'product/'+product.slug+'" class="text-uppercase"> shop now</a></li>\n' +
            '                                                    </ul>\n' +
            '                                                </div>\n' +
            '                                            </div>\n' +
            '                                        </div>\n' +
            '                                    </div>';
    });
    div += '</div>';
    $('.parent-div').empty().append(div);
}
function printErrorMsg()
{
    var div   = '';
    div += '<div class="border">\n' +
        '                                <img src="'+baseurl+'front/assets/img/sorry_img.jpg" class="w-100" style="height: 270px"/>\n' +
        '                                <h3 class="text-center text-danger font-italic py-2"> There is No Product Found Here !! Please try Another  .</h3>\n' +
        '                            </div>';
    $('.parent-div').empty().html(div);
}
