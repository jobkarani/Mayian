<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ env('APP_URL') }}">

    <title>{{ config('app.name', 'yesort') }}</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="icon" sizes="512x512" href="{{ staticAsset('frontend/img/icons/icon-512x512.png') }}">

    <!-- google font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

    <!-- css -->
    <link rel="stylesheet" href="{{ staticAsset('assets/css/vendors.css') }}">
    <link rel="stylesheet" href="{{ staticAsset('assets/css/yestech.css') }}">

    <script>
        var YEST = YEST || {};
    </script>
</head>

<body>
    <div class="yest-main-wrapper d-flex">

        <div class="flex-grow-1">
            @yield('content')
        </div>

    </div><!-- .yest-main-wrapper -->
    <script src="{{ staticAsset('assets/js/vendors.js') }}"></script>
    <script src="{{ staticAsset('assets/js/yestech.js') }}"></script>

    @yield('scripts')

    <script type="text/javascript">
        @foreach (session('flash_notification', collect())->toArray() as $message)
            YEST.libraries.notify('{{ $message['level'] }}', '{{ $message['message'] }}');
        @endforeach
    </script>
</body>

</html>
