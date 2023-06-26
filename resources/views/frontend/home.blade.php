<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- title -->
    <title>{{ $meta['meta_title'] }}</title>

    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="index, follow">
    <meta name="description" content="{{ $meta['meta_description'] }}" />
    <meta name="keywords" content="{{ $meta['meta_keywords'] }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ $meta['meta_title'] }}">
    <meta name="twitter:description" content="{{ $meta['meta_description'] }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ $meta['meta_image'] }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $meta['meta_title'] }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ url()->full() }}" />
    <meta property="og:image" content="{{ $meta['meta_image'] }}" />
    <meta property="og:description" content="{{ $meta['meta_description'] }}" />
    <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
    <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <!-- Styles -->
    @include('frontend.inc.styles')

    <!-- Scripts -->
    <script src="{{ mix('frontend/js/index.js') }}" defer></script>

    <!-- pwa -->
    @include('frontend.inc.pwa')

    <script>
        window.yestSetting = @json($settings);
        var YEST = {};
        YEST.apiPath = window.yestSetting.generalSettings.apiPath;
        YEST.languages = window.yestSetting.generalSettings.allLanguages;
        YEST.defaultLang = window.yestSetting.generalSettings.defaultLang;
        YEST.currencies = window.yestSetting.generalSettings.allCurrencies;
        YEST.defaultCurrency = window.yestSetting.generalSettings.defaultCurrency;
    </script>
</head>

<body>
    <noscript>To run this application, JavaScript is required to be enabled.</noscript>
    <div id="main-app"></div>

    <!-- Scripts -->
    @include('frontend.inc.scripts')
</body>

</html>
