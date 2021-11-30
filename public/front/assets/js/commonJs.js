
// ajax setup
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

// menu category show hide start
// get current page url
let currentPageUrl  = window.location.href;
// set categories in menu
if (currentPageUrl != baseurl)
{
    $('#menuCategoryTitle').click(function (){
        $('#menuAllCats').toggle(700);
    })
} else {
    $('#menuAllCats').css('display', 'block');
}
// menu category show hide end


/*  body stopPropagation*/
$('.mob-search-icon').on('click', function () {
    $('.search-mobile').toggle();
});
if ($(window).width() < 991)
{
    $('.mobCart').click(function (e) {
        e.stopPropagation();
    });
    $('.xx').click(function (e) {
        e.stopPropagation();
    });

    $('body').click(function () {
        $('.xx').hide();
    });
}


// search
function searchProduct(name) {
    $.ajax({
        url : baseurl+'search/search-product/'+name,
        method: 'GET',
        dataType: 'JSON',
        success:function (data) {
            if(data.length<1){
                var res = $('#res');
                res.empty();
                var ul = '';
                ul += '<ul class="navbar-nav msgHide">';
                ul += '<li class="text-danger p-2"><strong class="text-center"> Sorry !!. No Product Found . Please try Another !! </strong> </li>';
                ul+= '</ul>';
                res.append(ul);
            } else {
                var res = $('#res');
                res.empty();
                var ul = '';
                $.each(data, function (key,value) {
                    ul += '<ul class="navbar-nav ml-3 msgHide">';
                    ul+= '<a href=" '+baseurl+'product/'+value.slug+ '"  class="nav-link"><img class="mr-3" src=" '+baseurl+value.image+'" alt="" style="height:30px;width:30px">'+value.name+ '</a>';
                    // ul+= '<a href=" '+baseurl+'get-search-product/'+value.sub_category_id+'/'+value.name+ '"  class="nav-link"><img class="mr-3" src=" '+baseurl+value.image+'" alt="" style="height:30px;width:30px">'+value.name+ '</a>';

                    ul+= '</ul>';
                });
                ul  += data.length > 9 ? '<a href="'+baseurl+'results/'+name+'" data-slug="'+name+'" id="more-btnx"><i class="fa fa-plus" aria-hidden="true"></i> More Results</a>' : '';

                res.append(ul)
            }
        },

    });

}
// msgHide

$('body').keyup(function () {
    $(this).click(function () {
        $('.msgHide').text(' ');
    });
})
//end  search




