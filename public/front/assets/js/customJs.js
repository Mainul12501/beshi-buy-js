


/*fb sharing script*/

/*window.fbAsyncInit = function() {
        FB.init({
            appId            : '721169328514907',
            autoLogAppEvents : true,
            xfbml            : true,
            version          : 'v9.0'
        });
    };
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));


    function fbShare(link, name) {
        var appId = '721169328514907';
        var pageUrl ="https://www.facebook.com/dialog/feed?app_id="+appId +"&link="+link;
        var w = 1200;
        var h= 630;

        var left = (screen.width/2) - w/2;
        var top = (screen.height/2) - h/2;

        window.open(pageUrl, name, 'toolbar=no, location=null, directories=no, status=no, menubar=yes, scrollbars=no, resizeable=no, copyhistory=no, width='+1200+', height='+630+', top='+top+', left='+left);
        return false;
    }*/


/*fb sharing script*/


// user register validation on register js



// search by name ajax on common.js



// delivery script
function deliveryCharge(value) {
    var grandValue  =   $('#grandValue').val();

    $.ajax({
        url : baseurl+'delivery/delivery-charge/'+value,
        method: 'GET',
        dataType: 'JSON',
        success:function (data) {
            // console.log(data);
            $('#result').html(data.delivery_charge);
            if(data.delivery_charge == 'free'){
                var  result = parseFloat(grandValue);
                $('#outPut').val(result.toLocaleString())
            }
            else{
                var  result = parseFloat(data.delivery_charge)+parseFloat(grandValue);
                $('#outPut').val(result.toLocaleString())
            }
        }
    });

}

$(window).load(function() {
    var grandValue  =  parseFloat( $('#grandValue').val());
    $('#outPut').val(grandValue.toLocaleString())
});
// delivery script






// cart script codes on cart js


// delete product with ajax on cart.js
// add product to cart on modal-cart.js











/*home page  size color show hide test*/ //not being used r8 now
    function showMe(id) {
        // $('.hide-me').removeClass('hide-me');
        $('.sico-div'+id).removeClass('hide-me');
        $('.sc-hide'+id).hide();
    }
    function hideMe(id) {
        $('.sico-div'+id).addClass('hide-me');
        $('.sc-hide'+id).show();
    }
/*home page  size color show hide test*/




// Note: shorting section on cat-prod-shorting [category/sub-category page sorting - Type 1] not using r8 now -> cat-prod.blade



// cart section on mobile view on common.js

// product details comment section on product-details.js

// product details product video width control on product-details.js

// find modal form submit on modal-cart.js
// find modal view on modal-cart.js

// find checkout page validation and payment methods on checkout.js




