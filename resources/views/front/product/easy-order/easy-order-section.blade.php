<!--order process section-->
<div class="position-fixed" id="scrollHide" style="right: 5px; bottom: 23%; width: 60px; height: 80px; ">
    <div class="bg-danger" style="border-radius: 30px;">
        <p class="clickable f-s-16 text-light mx-auto text-center p-b-5 p-t-5" data-toggle="modal" data-target="#easyOrder">Easy Order</p>
    </div>
</div>
<!--modal-->
<div class="modal fade" id="easyOrder">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header close-no-border">
                <h5 class="mx-auto text-center font-weight-bold align-content-center f-s-28" >Order Easily</h5>
                <button type="button" class="close" data-dismiss="modal" >
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div>
                    <ul class="nav nav-pills nav-justified mb-3" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#sms" role="tab" aria-controls="pills-home" aria-selected="true">Though SMS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " data-toggle="pill" href="#phoneCall" role="tab" aria-controls="pills-home" aria-selected="false">Though Phone Call</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="sms">
                            <div class="font-size-p">
                                <p class="px-2 font-weight-bold text-center f-s-17">Product Code : {{ $product->code }}</p>
                                <p class="px-2 text-justify">You can Order this product Through SMS. To order this product please complete your payment and send an SMS at <span class="font-weight-bold text-success">01556339088</span>. </p>
                                <p class="px-2 font-weight-bold f-s-17">
                                    Product price (including vat,vendor and delivery charge) : <br/>
                                    <?php
                                    $bkash  = $product->sell_price+(($product->sell_price*1.8)/100)+100;
                                    ?>
                                    <span>Bkash ( <span class="text-success">01556339088</span> ) : {{ $bkash }} Tk.</span>  <br>
                                    <?php
                                    $rocket  = $product->sell_price+(($product->sell_price*1)/100)+100;
                                    ?>
                                    <span>Rocket ( <span class="text-success">017344819926</span> ) : {{ $rocket }} Tk.</span> <br>
                                    <?php
                                    $nagad  = $product->sell_price+(($product->sell_price*1.1)/100)+100;
                                    ?>
                                    <span>Nagad ( <span class="text-success">01556339088</span> ) : {{ $nagad }} Tk.</span>  <br>
                                </p>
                                <p class="px-2 text-justify"> To send the sms go to Message option in your mobile . Type <b>Your Name < space > Product code < space > Payment Method < space > Payment Transaction Id < space > Product Color < space > Product Size < space > Quantity < space > Contact Number</b></p>
                                <p class="px-2 text-justify">For example : <span class="f-s-17">Mainul {{ $product->code }} Bkash XF97EJL4VE red XL 1 01234567891</span> and send it to <span class="f-s-17">01556339088</span></p>
                                <p class="px-2 text-justify">Our customer manager will contact you ASAP after verifying your payment. </p>
                                <p class="px-2 text-justify text-danger">Note : You have to complete your payment first for this process.</p>
                                <a href="sms:01556339088" class="btn btn-success float-right">Send SMS</a>
                            </div>
                        </div>
                        <div class="tab-pane fade " id="phoneCall">
                            <p class="px-2 f-s-17 font-weight-bold text-center f-s-17">Product Code : {{ $product->code }}</p>
                            <p class="px-2 f-s-17 text-justify">You can order this product through a single call. Please call our customer manager at <span class="font-weight-bold text-success">01815395295</span> to order your this product.</p>
                            <p class="px-2 f-s-17 text-justify text-danger">Note : Now cash on delivery is supported all over the country through this process.</p>
                            <a href="tel:01556339088" class="btn btn-success float-right">Call Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
