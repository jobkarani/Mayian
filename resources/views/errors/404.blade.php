@extends('backend.layouts.blank')

@section('content')
    <section class="text-center py-6">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <img src="{{ staticAsset('assets/img/404.jpg') }}" class="mw-100 mx-auto mb-5" height="300">
                    <h1 class="fw-700">{{ localize('Page Not Found!') }}</h1>
                    <p class="fs-16 opacity-60">
                        {{ localize('The page you are looking for has not been found on our server.') }}</p>
                </div>
            </div>
        </div>
    </section>
@endsection
