{{--<!--brand newsletter area start-->
<div class="brand_newsletter_area bg-grey">
    <div class="container">
        <div class="row">
            <div class="col-12 mb-60">
                <div class="brand_container owl-carousel border rounded">
                    @foreach($brands as $brand)
                    <div class="single_brand">
                        <a href="{{route('category-product',['id'=>$brand->category_id,'name'=>preg_replace('/\s+/u', '-', trim($brand->name))])}}">
                            <img src="{{asset($brand->image)}}" class="rounded-circle" style="height: 45px; width: 120px" alt="">
                        </a>
                    </div>
                    @endforeach
                </div>
               <!----}}{{-- <div class="newsletter_inner mt-3 border-0 mb-20" >-->
               <!--     <div class="newsletter_content">-->
               <!--         <h2>SUBSCRIBE TO OUR NEWSLETTER</h2>-->
               <!--     </div>-->
               <!--     <div class="newsletter_form">-->
               <!--         <form action="#">-->
               <!--             <input placeholder="Email..." type="text">-->
               <!--             <button type="submit"><i class="zmdi zmdi-mail-send"></i></button>-->
               <!--         </form>-->
               <!--     </div>-->
               <!-- </div>--}}{{---->
            </div>
        </div>
    </div>
</div>
<!--brand area end-->--}}


<!--footer area start-->
<footer class="footer_widgets text-white" style="background: #000b1a">
    <div class="container">
        <div class="footer_top  border-0">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="widgets_container contact_us">
                        <h3>CONTACT US</h3>
                        <div class="footer_contact" >
                            <address>
                                <i class="zmdi zmdi-smartphone-ring mr-2 font-20"></i>  <span>  01815395295 / 01556339088</span> <br/>
                                <i class="zmdi zmdi-google-maps mr-2 font-20"></i>  <span>  Cha-65/A [2nd floor ]</span> <br/> <span class="ml-3">North Badda, Dhaka-1212 .</span><br/>
                                <i class="zmdi zmdi-mail-send mr-2 font-20"></i>  <span>  support@beshibuy.com</span>
                            </address>
                            {{--<ul>
                                <li><i class="fa fa-mobile" aria-hidden="true"></i> : <a href="tel:(+880) 1815395295"> 01815395295 / 01556339088 </a> </li>
                                <li><i class="fa fa-map-marker" aria-hidden="true"></i> :
                                    <span> Cha-65/A [2nd floor ] </span><br/>
                                    <span class="ml-4">North Badda, Dhaka-1212 .</span>

                                </li>

                                <li><i class="fa fa-envelope" aria-hidden="true"></i><span>Email  : </span><a href="mailto:support@beshibuy.com"> support@beshibuy.com</a> </li>
                            </ul>--}}
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="widgets_container widget_menu">
                                <h3>CUSTOMER SERVICE</h3>
                                <div class="footer_menu ">
                                    <ul class="">
                                        <li><a href="{{route('return-policy')}}">Returns Policy</a></li>
                                        <li><a href="{{route('delivery')}}">Delivery Policy</a></li>
                                        <li><a href="{{route('contact')}}"> Contact</a></li>
                                        <li><a href="{{route('contact')}}"> Request a Product</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="widgets_container widget_menu">
                                <h3>Information</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="javascript:void(0)">About Us</a></li>
                                        <li><a href="javascript:void(0)">Delivery Information</a></li>
                                        <li><a href="javascript:void(0)">Privacy Policy</a></li>
                                        <li><a href="javascript:void(0)"> Frequently Questions</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="widgets_container widget_menu">
                        <h3>We Accept</h3>
                        <div class="footer_menu">
                            <ul>
                                <li>
                                    <a href="javascript:void(0)" class="p-2">
                                        <img src="{{asset('/')}}front/assets/img/card_img/1.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                    <a href="javascript:void(0)" class="p-2">
                                        <img src="{{asset('/')}}front/assets/img/card_img/2.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                    <a href="javascript:void(0)" class="p-2" >
                                        <img src="{{asset('/')}}front/assets/img/card_img/3.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                </li>
                                <li class="mt-4">
                                    <a href="javascript:void(0)" class="p-2 ">
                                        <img src="{{asset('/')}}front/assets/img/card_img/4.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                    <a href="javascript:void(0)" class="p-2 ">
                                        <img src="{{asset('/')}}front/assets/img/card_img/5.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                    <a href="javascript:void(0)" class="p-2">
                                        <img src="{{asset('/')}}front/assets/img/card_img/6.webp" class="p-1  rounded border" style="width: 50px"/>
                                    </a>
                                </li>
                                <div class="modal_social mt-4" >
                                    <ul>
                                        <li class="facebook mr-2"><a href="https://www.facebook.com/beshibuy" target="_blank"><i class="fa fa-facebook "></i></a></li>
                                        <li class="twitter mr-2"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <!--<li class="google-plus mr-2"><a href="#"><i class="fa fa-google-plus"></i></a></li>-->
                                        <!--<li class="linkedin mr-2"><a href="#"><i class="fa fa-linkedin"></i></a></li>-->
                                    </ul>
                                </div>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-12 mt-5">
                    <div class="newsletter_inner border-0 m-0 p-0" >
                        <div class="newsletter_content">
                            <h4>SUBSCRIBE NOW</h4>
                        </div>
                        <div class="newsletter_form">
                             <!--<span class="text-danger ml-2">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>-->
                            <form action="{{route('new-subscriber')}}" method="POST">
                                @csrf
                                <input type="text" name="email" placeholder="Enter valid email . . ."  required>
                                <button type="submit"><i class="zmdi zmdi-mail-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer_bottom" style="background:#001733">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="copyright_area text-center">
                        <p> &copy; 2020 <a href="{{ route('/') }}" class="ml-1 mr-2"> BeshiBuy  </a>| All Right Reserved </p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</footer>
<!--footer area end-->
