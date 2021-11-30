@extends('front.master')
@section('title')
    Return Policy
@endsection
@section('body')


<!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li>Return Policy</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h4 class="text-center f-s-24 pb-5">রিপ্লেসমেন্ট পলিসি (Replacement Policy)</h4>
                    <div class="float-right">
                        <ul class="nav nav-tabs ">
                            <li class="nav-item"><a href="#bangla" class="active nav-link f-s-21" role="tab" aria-controls="bangla" aria-selected="true" data-toggle="tab">বাংলা</a></li>
                            <li class=""><a href="#english" class="nav-link f-s-21" role="tab" aria-controls="english" aria-selected="false" data-toggle="tab">English</a></li>
                        </ul>
                    </div>
                    <br>
                    <div class="tab-content mt-5">
                        <div class="tab-pane show fade active" role="tabpanel" id="bangla">
                            <p class="f-s-17">যে সকল প্রোডাক্টটের মূল্য ২০০০ টাকার বেশি শুধুমাত্র সেগুলোর ক্ষেত্রে কাস্টমার নিম্নের শর্ত সাপেক্ষে প্রোডাক্টটির রিপ্লেসমেন্ট সুবিধা পাবে।</p>
                            <p class="f-s-17">১) প্রোডাক্টের সমস্যার (যেমন : প্রোডাক্ট ভাঙ্গা, ছেঁড়া, ভুল সাইজ, প্রোডাক্ট কাজ না করা, ছবির সাথে প্রোডাক্টের মিল না থাকা ইত্যাদি) ক্ষেত্রে আপনি রিপ্লেসমেন্ট পেতে পারেন।</p>
                            <p class="f-s-17">২) প্রোডাক্টটির বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে।</p>
                            <p class="f-s-17">৩) ডেলিভারি গ্রহনের পর সর্বোচ্চ ৪৮ ঘন্টার মধ্যে আপনাকে complain@relaxshop.com এ মেইল করতে হবে অথবা আমাদের ওয়েবসাইট এ কমপ্লেইন রেজিস্টার করতে হবে।</p>
                            <p class="f-s-17">৪) আপনাকে উক্ত প্রোডাক্টট relaxshopBD-এর অফিসে অবশ্যই সর্বোচ্চ ৭ কার্যদিবসের মধ্যে নিজ দায়িত্বে ফেরত পাঠাতে হবে।</p>
                            <p class="f-s-17">৫) প্রোডাক্ট আজকেরডিলের অফিসে পাঠানোর জন্য সর্বোচ্চ কুরিয়ার চার্জ ঢাকার ভিতরে ৮০ টাকা ও ঢাকার বাইরে ১২০ টাকা কাস্টমারকে ফেরত দেয়া হবে।</p>

                            <p class="f-s-17 mt-3">বিঃ দ্রঃ  </p>
                            <p class="f-s-17 ">পণ্য ও সার্ভিস সম্পর্কিত কোনো অভিযোগের জন্য আমাদের কমপ্লেইন্ট টীম আপনাকে ফোন করবেন। এ জন্য আপনার অভিযোগটি সমাধান না হওয়া পর্যন্ত আপনাকে আমরা ফোনে সক্রিয় পেতে চাই। আপনার যোগাযোগে দেওয়া নম্বরটি সক্রিয় না থাকলে বিকল্প কোনো নম্বর সক্রিয় থাকতে হবে। রিফান্ডের জন্য আপনাকে টাকাটি ফেরতের মাধ্যম আমাদের জানাতে হবে। আমরা আপনার কোনো প্রকার সহযোগিতা ১৫ কার্যদিবসের মধ্যে ফোনে অথবা ইমেইলে না পেলে আপনার অভিযোগটি নিস্পত্তি বলে মনে করবো।</p>
                        </div>
                        <div class="tab-pane fade " role="tabpanel" id="english">
                            <p class="f-s-17">We provide great customer experience each time you shop with your RelaxShop. If you are not satisfied with your purchase, we ensure ‘Replacement Guarantee’. We will replace your purchased product if the product has any defect by its manufacturer or if the product is not the same one you ordered. Please check your products in front of riders or courier service agents.</p>
                            <p class="f-s-17">All you need to do is give us a call or drop an email at admin@relaxshopbd.com within a period of 24 hours from the date of delivery. However, please return the product with the tags intact and in their original packaging, in an unwashed and undamaged condition. Replacement for products is subject to inspection and checking by RelaxShop team. Replacement cannot be possible if the product is burnt, damaged by short circuit, or broken by customer.</p>
                            <p class="f-s-17">We give the option of taking back the product from your doorstep at Dhaka. If reverse pickup is not possible from your doorstep, you can send it by courier to our office address (39 North Road, Vuter Goli, Dhanmondi, Dhaka 1205). Damages due to neglect, improper usage or application will not be covered under our 'Replacement Guarantee’.</p>
                            <p class="f-s-17">In case of product's sold out at merchant's end, customer can choose any other product from our website or can keep the amount debited to his wallet account. In case of refunding card payment, the refund will be returned directly to the customer's debit/credit card if customer claims a refund to his bank. Then we will be informed about it via SSLCommerzBD and take necessary initiatives. Card payment can be refunded only to the card holder's account via bank and cannot be refunded partially as per policy.</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
