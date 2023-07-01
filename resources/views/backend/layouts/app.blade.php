<!doctype html>

@if (\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
    <html dir="rtl" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@else
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@endif

<head>
    <!-- meta tags -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ getBaseURL() }}">
    <meta name="file-base-url" content="{{ getFileBaseURL() }}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="icon" sizes="512x512" href="{{ staticAsset('frontend/img/icons/icon-512x512.png') }}">
    <title>{{ config('app.name', 'Yesort') }}</title>

    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- css -->
    <link rel="stylesheet" href="{{ asset('assets/css/uppy.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendors.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/yestech.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/custom-style.css') }}">
    <!-- css -->

    <!-- header scripts -->
    @include('backend.inc.headerScripts')
    <!-- header scripts -->

</head>

<body class="">
    <div class="yest-main-wrapper">

        {{-- sidenav --}}
        @include('backend.inc.admin_sidenav')
        {{-- sidenav --}}

        {{-- content --}}
        <div class="yest-content-wrapper">
            @include('backend.inc.admin_nav')
            <div class="yest-main-content">
                <div class="px-15px px-lg-25px">
                    @yield('content')
                </div>

                {{-- footer --}}
                <div class="d-flex justify-content-between py-3 px-15px px-lg-25px mt-auto">
                    <div class="mb-0">&copy; {{ getSetting('site_name') }}</div>
                    <div>v{{ env('CURRENT_VERSION') }}</div>
                </div>
                {{-- footer --}}

            </div>
        </div>
        {{-- content --}}

    </div>

    {{-- modals --}}
    @yield('modal')
    {{-- modals --}}

    {{-- scripts --}}
    <script src="{{ staticAsset('assets/js/uppy.js') }}"></script>
    <script src="{{ staticAsset('assets/js/vendors.js') }}"></script>
    <script src="{{ staticAsset('assets/js/uploader.js') }}"></script>
    <script src="{{ staticAsset('assets/js/yestech.js') }}"></script>
    <script src="{{ staticAsset('assets/js/library-helpers.js') }}"></script>

    @yield('script')

    <!-- bottom scripts -->
    @include('backend.inc.bottomScripts')
    <!-- bottom scripts -->
</body>

</html>
