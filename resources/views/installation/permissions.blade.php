@extends('backend.layouts.blank')
@section('content')
    <div class="h-100 d-flex flex-column justify-content-center bg-light">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="mar-ver pad-btm text-center">
                            <h1 class="h3">Checking file permissions</h1>
                            <div class=" mb-3">
                                If everything is green, you are good to go to the next step.
                            </div>
                        </div>

                        <ul class="list-group">
                            <li class="list-group-item text-semibold">
                                Php version 8.1+

                                @php
                                    $phpVersion = number_format((float) phpversion(), 2, '.', '');
                                @endphp
                                @if ($phpVersion >= 8.1)
                                    <i class="la la-check text-success float-right"></i>
                                @else
                                    <i class="la la-close text-danger float-right"></i>
                                @endif
                            </li>

                            <li class="list-group-item text-semibold">
                                Curl Enabled

                                @if ($permission['curl_enabled'])
                                    <i class="la la-check text-success float-right"></i>
                                @else
                                    <i class="la la-close text-danger float-right"></i>
                                @endif
                            </li>
                            <li class="list-group-item text-semibold">
                                <b>.env</b> File Permission

                                @if ($permission['db_file_write_perm'])
                                    <i class="la la-check text-success float-right"></i>
                                @else
                                    <i class="la la-close text-danger float-right"></i>
                                @endif
                            </li>
                            <li class="list-group-item text-semibold">
                                <b>RouteServiceProvider.php</b> File Permission

                                @if ($permission['routes_file_write_perm'])
                                    <i class="la la-check text-success float-right"></i>
                                @else
                                    <i class="la la-close text-danger float-right"></i>
                                @endif
                            </li>
                        </ul>

                        <p class="text-center mt-3">
                            @if (
                                $permission['curl_enabled'] == 1 &&
                                    $permission['db_file_write_perm'] == 1 &&
                                    $permission['routes_file_write_perm'] == 1 &&
                                    $phpVersion >= 8.1)
                                <a href="{{ route('step3') }}" class="btn btn-primary">Go To Database Setup</a>
                            @endif
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
