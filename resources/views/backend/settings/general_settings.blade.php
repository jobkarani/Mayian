@extends('backend.layouts.app')

@section('content')
    <div class="row gutters-5">
        <div class="col-lg-7">

            {{-- login & registration --}}
            <div class="card">
                <div class="card-header">
                    <h1 class="mb-0 h6">{{ localize('Login & Registration Configuration') }}</h1>
                </div>
                <div class="card-body">
                    <form class="form-horizontal" action="{{ route('settings.update') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('Login/Registration with') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="customer_login_with">
                                <div class="yest-radio-list">
                                    <label class="yest-radio">
                                        <input type="radio" name="customer_login_with" value="email"
                                            @if (getSetting('customer_login_with') == 'email') checked @endif>
                                        <span class="yest-rounded-check"></span>
                                        <span>{{ localize('Email') }}</span>
                                    </label>

                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <label class="col-from-label">{{ localize('Verify Registration with') }}</label>
                            </div>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="customer_verification_with">
                                <div class="yest-radio-list">
                                    <label class="yest-radio">
                                        <input type="radio" name="customer_verification_with" value="email"
                                            @if (getSetting('customer_verification_with') == 'email') checked @endif>
                                        <span class="yest-rounded-check"></span>
                                        <span>{{ localize('Email') }}</span>
                                    </label>

                                    <label class="yest-radio">
                                        <input type="radio" name="customer_verification_with" value="disabled"
                                            @if (getSetting('customer_verification_with') == 'disabled') checked @endif>
                                        <span class="yest-rounded-check"></span>
                                        <span>{{ localize('Disabled') }}</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Update') }}</button>
                        </div>
                    </form>
                </div>
            </div>

            {{-- general --}}
            <div class="card">
                <div class="card-header">
                    <h1 class="mb-0 h6">{{ localize('General Settings') }}</h1>
                </div>
                <div class="card-body">
                    <form class="form-horizontal" action="{{ route('settings.update') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('System Name') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="site_name">
                                <input type="text" name="site_name" class="form-control"
                                    value="{{ getSetting('site_name') }}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('Admin Panel Logo') }}</label>
                            <div class="col-sm-12">
                                <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">{{ localize('Browse') }}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ localize('Choose Files') }}</div>
                                    <input type="hidden" name="types[]" value="admin_logo">
                                    <input type="hidden" name="admin_logo" value="{{ getSetting('admin_logo') }}"
                                        class="chosen-files">
                                </div>
                                <div class="view-file box sm"></div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('System Timezone') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="timezone">
                                <select name="timezone" class="form-control yest-selectpicker" data-live-search="true"
                                    data-selected="{{ config('app.timezone') }}">
                                    @foreach (timezones() as $key => $value)
                                        <option value="{{ $value }}">{{ $key }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Update') }}</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <div class="col-lg-5">
            {{-- check in & out --}}
            <div class="card">
                <form class="form-horizontal" action="{{ route('settings.update') }}" method="POST">
                    @csrf
                    <div class="card-header">
                        <h1 class="mb-0 h6">{{ localize('Check In - Check Out Time') }}</h1>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('Check in time') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="check_in_time">
                                <input type="text" name="check_in_time" class="form-control"
                                    value="{{ getSetting('check_in_time') }}" placeholder="10:10 AM">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('Check out time') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="check_out_time">
                                <input type="text" name="check_out_time" class="form-control"
                                    value="{{ getSetting('check_out_time') }}" placeholder="10:10 AM">
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </div>
                </form>
            </div>

            {{-- Booking Code Prefix --}}
            <div class="card">
                <form class="form-horizontal" action="{{ route('settings.update') }}" method="POST">
                    @csrf
                    <div class="card-header">
                        <h1 class="mb-0 h6">{{ localize('Booking Code Prefix') }}</h1>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-sm-12 col-from-label">{{ localize('Booking Code Prefix') }}</label>
                            <div class="col-sm-12">
                                <input type="hidden" name="types[]" value="booking_code_prefix">
                                <input type="text" name="booking_code_prefix" class="form-control"
                                    value="{{ getSetting('booking_code_prefix') }}" placeholder="YESORT">
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </div>
                </form>
            </div>

            {{-- activation --}}
            <div class="card d-none">
                <div class="card-header">
                    <h1 class="mb-0 h6">{{ localize('Features Activation') }}</h1>
                </div>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-6 col-from-label">{{ localize('Forcefully HTTPS redirection') }}</label>
                        <div class="col-sm-6">
                            <label class="yest-switch yest-switch-success mb-0">
                                <input type="checkbox" onchange="updateSettings(this, 'FORCE_HTTPS')"
                                    @if (env('FORCE_HTTPS') == 'On') checked @endif>
                                <span class="slider round"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        function updateSettings(el, type) {
            if ($(el).is(':checked')) {
                var value = 1;
            } else {
                var value = 0;
            }
            $.post('{{ route('settings.update.activation') }}', {
                _token: '{{ csrf_token() }}',
                type: type,
                value: value
            }, function(data) {
                if (data == '1') {
                    YEST.libraries.notify('success', '{{ localize('Settings updated successfully') }}');
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }
    </script>
@endsection
