// payment info scripts

// onclick validation
function validation() {
    var method  = $('input[name=payment_type]:checked').val();
    var message = document.getElementById('message');
    if (method==null){
        message.innerHTML ='Please select a Payment Method.';
        return false;
    }else {
        return true;
    }
}

// print price values
var total   = $('#grandtotal').val();
var couponAmount   = $('#couponAmount').val();
var formatter = new Intl.NumberFormat('en-IN');

$('#zero').click(function () {
    var charge = 0;
    var bkashtotal = $('#grandtotal').val();
    $('#payCharge').html(formatter.format(charge));
    $('#showTotal').html(bkashtotal);
    $('#payMethod').html('COD Charge');
});
$('#one').click(function () {
    var charge = (total *1.85)/100;
    var bkashtotal = $('#bkashtotal').val();
    $('#payCharge').html(formatter.format(charge));
    $('#showTotal').html(bkashtotal);
    $('#payMethod').html('Bkash Charge');
});
$('#two').click(function () {
    var charge = (total *1)/100;
    var showTotal   = $('#rockettotal').val();
    $('#payCharge').html(formatter.format(charge));
    $('#showTotal').html(showTotal);
    $('#payMethod').html('Rocket Charge');
});
$('#three').click(function () {
    var charge = (total *1.5)/100;
    var showTotal   = $('#nagadtotal').val();
    $('#payCharge').html(formatter.format(charge));
    $('#showTotal').html(showTotal);
    $('#payMethod').html('Nagad Charge');
});

// must select an address
