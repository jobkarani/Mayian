@extends('backend.layouts.blank')

@section('content')
    <section class="text-center py-6">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <img src="{{ staticAsset('assets/img/500.jpg') }}" class="img-fluid w-75">
                    <h1 class="h2 fw-700 mt-5">{{ localize('Something went wrong!') }}</h1>
                    <p class="fs-16 opacity-60">{{ localize("Sorry for the inconvenience, but we're working on it.") }} <br>
                        {{ localize('Error code') }}: 500</p>
                </div>
            </div>
        </div>
    </section>
@endsection
