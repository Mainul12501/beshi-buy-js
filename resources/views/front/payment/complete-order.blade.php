@extends('front.master')
@section('title')
   Order-complete
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
                            <li>Complete Order</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <div class="container">
        <div class="row mt-60 mb-60 ">
            <div class="col-lg-7 mx-auto  shadow" style="background:#13B93D;border: 15px solid white">
            <h3 class="text-white text-center  p-4 font-italic"> Congratulations !!!</h3>
             <h3 class="p-3" style="color: yellow">Dear Mr. / Ms.  <strong class="">{{ \Illuminate\Support\Facades\Auth::user()->name }} ,</strong></h3>
                <p class="text-white text-justify p-3">
                    Your Order is successfully done .
                    please wait , very soon our representative person will be able to reach your address with
                    as per your desire products .
                </p>
                <h2 class="p-3 mt-3" style="color: yellow">Thanks !!</h2><br/>
                <a href="{{ route('/') }}" class="float-right f-s-22 nav-link text-white">Return Home</a>
                <h3 class="p-3 text-warning"> Regards By </h3>
                <h4 class="p-3" style="color: yellow;font-size: 20px"><a href="{{ route('/') }}">BeshiBuy</a></h4>
             </div>
         </div>
    </div>
@endsection
@section('extra-js')
    <script>
        $(document).ready(function () {
            setTimeout(function () {
                location.replace(baseurl);
            },2000)
        })
    </script>
@endsection
