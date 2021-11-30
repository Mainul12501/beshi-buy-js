
$(function (){
    setTimeout(function (){
        $.ajax({
            url: baseurl+'get-all-brands',
            method: 'GET',
            dataType: 'JSON',
            beforeSend: function (){
                $('#brandDiv').append(loaderDiv);
            },
            success: function (data){
                $('#paginate').pagination({
                    dataSource: data,
                    pageSize: 12,
                    callback: function(data, pagination) {
                        var div = appendBrands(data);
                        $('#brandDiv').html(div);
                    }
                });
            },
            complete: function (){
                $('.loader-icon').css('display', 'none');
            },
            error: function (){
                toastr.error('something wrong...');
            }
        });
    },1000)
})
function appendBrands (data)
{
    // empty Product parent div
    var productDiv  = $('#brandDiv');
    productDiv.empty();

    var div = '';
    // div += '<div>';
    $.each(data, function (index, product){
        div += '<div class="col-md-2 p-2">\n' +
            '                            <div class="card ">\n' +
            '                                <div class="card-body shadow">\n' +
            '                                    <a href="'+baseurl+'brand/'+product.slug+'">\n' +
            '                                        <img src="'+baseurl+product.image+'"  alt=""   style="height: 70px" />\n' +
            '                                    </a>\n' +
            '                                </div>\n' +
            '                            </div>\n' +
            '                        </div>';
    });
// div += '</div>';
    // productDiv.append(div);


    return div;
}
