@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body text-center">
                    <span class="avatar avatar-xxl mb-3">
                        @if ($user->avatar != null)
                            <img src="{{ uploadedAsset($user->avatar) }}">
                        @else
                            <img src="{{ my_asset('assets/frontend/default/img/avatar-place.png') }}0"
                                onerror="this.onerror=null;this.src='{{ staticAsset('/assets/img/avatar-place.png') }}';">
                        @endif
                    </span>
                    <h1 class="h5 mb-1">{{ $user->name }}</h1>
                    <div class="text-left mt-5">
                        <h6 class="separator mb-4 text-left"><span class="bg-white pr-3">{{ localize('Guest Info') }}</span>
                        </h6>
                        <p class="text-muted">
                            <strong>{{ localize('Full Name') }} :</strong>
                            <span class="ml-2">{{ $user->name }}</span>
                        </p>
                        <p class="text-muted"><strong>{{ localize('Email') }} :</strong>
                            <span class="ml-2">
                                {{ $user->email }}
                            </span>
                        </p>
                        <p class="text-muted"><strong>{{ localize('Phone') }} :</strong>
                            <span class="ml-2">
                                {{ $user->phone }}
                            </span>
                        </p>
                        <p class="text-muted"><strong>{{ localize('Joined On') }} :</strong>
                            <span class="ml-2">
                                {{ $user->created_at }}
                            </span>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
