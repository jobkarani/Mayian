@extends('backend.layouts.blank')

@section('content')
    <div class="h-100 bg-cover bg-center py-5 d-flex align-items-center bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xl-4 mx-auto">
                    <div class="card text-left">
                        <div class="bg-white rounded"></div>
                        <div class="card-body position-relative z-1">
                            <div class="mb-4 text-center">
                                <img src="{{ uploadedAsset(getSetting('header_logo_dark')) }}" class="mw-100 mb-4"
                                    height="40">
                                <p class="fs-15 opacity-80">{{ localize('Login to your account.') }}</p>
                            </div>
                            <form class="pad-hor" method="POST" role="form" action="{{ route('login') }}">
                                @csrf

                                <div class="form-group">
                                    <label class="mb-1">{{ localize('Email') }}</label>
                                    <input id="email" type="email"
                                        class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"
                                        value="{{ old('email') }}" required autofocus
                                        placeholder="{{ localize('Email') }}">
                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label class="mb-1">{{ localize('Password') }}</label>
                                    <input id="password" type="password"
                                        class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                        name="password" required placeholder="{{ localize('Password') }}">
                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="row mb-2">
                                    <div class="col-sm-6">
                                        <div class="text-left">
                                            <label class="yest-checkbox">
                                                <input type="checkbox" name="remember" id="remember"
                                                    {{ old('remember') ? 'checked' : '' }}>
                                                <span>{{ localize('Remember Me') }}</span>
                                                <span class="yest-square-check bg-white"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                @if (env('DEMO_MODE') == 'On')
                                    <div class="mb-4">
                                        <table class="table table-hover">
                                            <tbody>
                                                <tr>
                                                    <td class="v-align-middle border-0">admin@example.com</td>
                                                    <td class="v-align-middle border-0">123456</td>
                                                    <td class="v-align-middle border-0"><button
                                                            class="btn btn-warning btn-xs"
                                                            onclick="autoFill()">{{ localize('Admin') }}</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                @endif

                                <button type="submit" class="btn btn-primary btn-block">
                                    {{ localize('Login') }}
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        function autoFill() {
            $('#email').val('admin@example.com');
            $('#password').val('123456');
        }

        function autoFillSeller() {
            $('#email').val('seller@example.com');
            $('#password').val('123456');
        }
    </script>
@endsection
