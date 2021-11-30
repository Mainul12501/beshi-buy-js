<!doctype html>
<html class="no-js" lang="{{\Illuminate\Support\Facades\App::getLocale()}}">
{{--<html class="no-js" lang="en">--}}

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="facebook-domain-verification" content="8at7xvh2hvb254jxojfe5y2eba48rj" />
    {{--prevent search engin from indexing--}}
    <meta name="robots" content="noindex, nofollow">
    {{--prevent search engin from indexing--}}
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}front/assets/img/favicon.png"/>

    @include('front.includes.assets.css')


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-180186696-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-180186696-1');
</script>

{{-- fb sharing script--}}
    <!--<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0&appId=721169328514907&autoLogAppEvents=1"></script>-->
{{-- fb sharing script--}}

    @yield('meta')

    @yield('extra-css')

    <script>
        let baseurl     = {!! json_encode(url('/')) !!}+'/';
        let loaderDiv   = '<div class="loader-icon"></div>';
    </script>

</head>

<body  style="background: #F8F9FA">

<!--header area start-->
<header class="header_area">
    <!--header top start-->
{{--    @include('front.includes.header-top')--}}
    @include('front.includes.header-center')
</header>

@include('front.includes.menu.mobile-offcanves-menu')

@include('front.includes.menu.common-menu')

@yield('body')
@include('front.includes.footer')
@yield('extra-divs')
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="113337117204778"
     theme_color="#0A7CFF"
     logged_in_greeting="Hi! Welcome to Beshi Buy. How can we help you?"
     logged_out_greeting="Hi! Welcome to Beshi Buy. How can we help you?">
</div>
<!-- Your Chat Plugin code -->

@include('front.includes.assets.js')

{{--custom js--}}
@yield('extra-js')


@if(Session::has('msg'))
    <script>
        var type = "{{ Session::get('alert-type', 'info') }}";
        switch(type){
            case 'info':
                toastr.info("{{ Session::get('msg') }}");
                break;
            case 'warning':
                toastr.warning("{{ Session::get('msg') }}");
                break;

            case 'success':
                toastr.success("{{ Session::get('msg') }}");
                break;

            case 'error':
                toastr.error("{{ Session::get('msg') }}");
                break;
        }
    </script>
@endif
<script>
    // remove hash from login reditrct
var hash = window.location.hash;
if((hash == '#') || (hash == '#_=_'))
{
    history.replaceState({}, document.title, ".");
}

// test start
$('#searchButton').on('click', function (e) {
        e.preventDefault();
        var searchKW    = $('#search').val();
        var result      = searchKW.replace(/\s+/g,"-");
        var pathK       = window.location.origin;

        $('#searchForm').attr('action', pathK+'/product-search/'+result).submit();
    });

</script>
@if(Session::has('barta'))
    <script>
        toastr.success("{{ Session::get('barta') }}");
    </script>
@endif






</body>

</html>
