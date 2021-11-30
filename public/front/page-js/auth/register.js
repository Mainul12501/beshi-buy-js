/*register phone validation*/
function phoneCheck(phone) {
    $.ajax({
        url : baseurl+'ajax-phone-check/'+phone,
        method : 'GET',
        dataType : 'JSON',
        success:function (data) {
            // console.log(data)
            if(data == 'Phone number is available'){
                $('.sucs-phone').text(data)
            }else{
                $('.error-phone').text(data);
            }
            if(data == 'Phone number already Exist !! Please use another number.'){
                $('#regBtn').prop('disabled',true)
            }else{
                $('#regBtn').prop('disabled',false)
            }
        }
    });

}
/*register email validation*/
function emailCheck(email) {
    $.ajax({
        url : baseurl+'ajax-email-check/'+email,
        method : 'GET',
        dataType : 'JSON',
        success:function (data) {
            if(data == 'Email is available'){
                $('.sucs-email').text(data)
            }else{
                $('.error-email').text(data);
            }
            if(data == 'Email already Exist !! Please use another email .'){
                $('#regBtn').prop('disabled',true)
            }else{
                $('#regBtn').prop('disabled',false)
            }

        }
    });

}

// go to login page
$(document).on('click', '#logIn', function (){
    event.preventDefault();
    window.location.href    = baseurl+'user/login';
})
