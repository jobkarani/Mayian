@extends('backend.layouts.app')

@section('content')
    <div class="col-lg-10  mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{ localize('Profile') }}</h5>
            </div>
            <div class="card-body">
                <form class="form-horizontal" action="{{ route('profile.update', Auth::user()->id) }}" method="POST"
                    enctype="multipart/form-data">
                    <input name="_method" type="hidden" value="PATCH">
                    @csrf
                    <div class="form-group row">
                        <label class="col-md-12 col-from-label" for="name">{{ localize('Name') }}</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control" placeholder="{{ localize('Name') }}" name="name"
                                value="{{ Auth::user()->name }}" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12 col-from-label" for="name">{{ localize('Email') }}</label>
                        <div class="col-md-12">
                            <input type="email" class="form-control" placeholder="{{ localize('Email') }}" name="email"
                                value="{{ Auth::user()->email }}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12 col-from-label" for="new_password">{{ localize('New Password') }}</label>
                        <div class="col-md-12">
                            <input type="password" class="form-control" placeholder="{{ localize('New Password') }}"
                                name="new_password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12 col-from-label"
                            for="confirm_password">{{ localize('Confirm Password') }}</label>
                        <div class="col-md-12">
                            <input type="password" class="form-control" placeholder="{{ localize('Confirm Password') }}"
                                name="confirm_password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12 col-form-label" for="signinSrEmail">{{ localize('Avatar') }}
                            <small>(100x100)</small></label>
                        <div class="col-md-12">
                            <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                <div class="input-group-prepend">
                                    <div class="input-group-text bg-soft-secondary font-weight-medium">
                                        {{ localize('Browse') }}</div>
                                </div>
                                <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                <input type="hidden" name="avatar" class="chosen-files"
                                    value="{{ Auth::user()->avatar }}">
                            </div>
                            <div class="view-file box sm">
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
