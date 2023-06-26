@extends('backend.layouts.blank')
@section('content')
    <div class="h-100 d-flex flex-column justify-content-center bg-light">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <h1 class="h3">Congratulations!!!</h1>
                            <p>You have successfully completed the installation process. Please Login to continue.</p>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h3 class="fs-16 mb-0 card-title text-center">
                                    Configure the SMTP setting to run the system properly.
                                </h3>
                            </div>
                            <div class="card-body">
                                <h5>Drop a postive rating in our codecanyon profile by clicking <a
                                        href="https://codecanyon.net/user/yestechltd" target="_blank"
                                        rel="noopener noreferrer">here..</a></h5>
                            </div>
                        </div>
                        <div class="text-center">
                            <a href="{{ env('APP_URL') }}/admin" class="btn btn-primary">Admin Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
