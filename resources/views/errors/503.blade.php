@extends('backend.layouts.blank')

@section('content')
    <div class="text-center">
        <p class="h3 text-uppercase text-bold">{{ localize('OOPS!') }}</p>
        <div class="pad-btm">
            {{ localize('This site is under developement. We will be back soon!!') }}
        </div>
    </div>
@endsection
