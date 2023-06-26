@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 h6">{{ localize('SMTP Settings') }}</h5>
                </div>
                <div class="card-body">
                    <form class="form-horizontal" action="{{ route('env_key_update.update') }}" method="POST">
                        @csrf
                        <div class="form-group row align-items-center">
                            <input type="hidden" name="types[]" value="MAIL_DRIVER">
                            <label class="col-md-12 col-form-label">{{ localize('Type') }}</label>
                            <div class="col-md-12">
                                <select class="form-control yest-selectpicker mb-2 mb-md-0" name="MAIL_DRIVER">
                                    <option value="sendmail" @if (env('MAIL_DRIVER') == 'sendmail') selected @endif>
                                        {{ localize('Sendmail') }}</option>
                                    <option value="smtp" @if (env('MAIL_DRIVER') == 'smtp') selected @endif>
                                        {{ localize('SMTP') }}</option>
                                </select>
                            </div>
                        </div>
                        <div id="smtp">
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_HOST">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL HOST') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_HOST"
                                        value="{{ env('MAIL_HOST') }}" placeholder="{{ localize('MAIL HOST') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_PORT">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL PORT') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_PORT"
                                        value="{{ env('MAIL_PORT') }}" placeholder="{{ localize('MAIL PORT') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_USERNAME">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL USERNAME') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_USERNAME"
                                        value="{{ env('MAIL_USERNAME') }}" placeholder="{{ localize('MAIL USERNAME') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_PASSWORD">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL PASSWORD') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_PASSWORD"
                                        value="{{ env('MAIL_PASSWORD') }}" placeholder="{{ localize('MAIL PASSWORD') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_ENCRYPTION">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL ENCRYPTION') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_ENCRYPTION"
                                        value="{{ env('MAIL_ENCRYPTION') }}"
                                        placeholder="{{ localize('MAIL ENCRYPTION') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_FROM_ADDRESS">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL FROM ADDRESS') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_FROM_ADDRESS"
                                        value="{{ env('MAIL_FROM_ADDRESS') }}"
                                        placeholder="{{ localize('MAIL FROM ADDRESS') }}">
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <input type="hidden" name="types[]" value="MAIL_FROM_NAME">
                                <div class="col-md-12">
                                    <label class="col-from-label">{{ localize('MAIL FROM NAME') }}</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="MAIL_FROM_NAME"
                                        value="{{ env('MAIL_FROM_NAME') }}"
                                        placeholder="{{ localize('MAIL FROM NAME') }}">
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-0 text-right">
                            <button type="submit" class="btn btn-sm btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
