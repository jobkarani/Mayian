@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <div class="card-header">
            <h6 class="fw-600 mb-0">{{ localize('Footer Info') }}</h6>
        </div>
        <div class="card-body">
            <div class="row gutters-10">
                <div class="col-md-12">
                    <form action="{{ route('settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>{{ localize('About Text') }}</label>
                            <input type="hidden" name="types[]" value="footer_about">
                            <textarea type="text" class="form-control" placeholder="{{ localize('About Text') }}" name="footer_about">{{ getSetting('footer_about') }}</textarea>
                        </div>

                        <div class="form-group">
                            <label>{{ localize('Address') }}</label>
                            <input type="hidden" name="types[]" value="contact_address">
                            <input type="text" class="form-control" placeholder="{{ localize('Address') }}"
                                name="contact_address" value="{{ getSetting('contact_address') }}">
                        </div>

                        <div class="form-group">
                            <label>{{ localize('Phone') }}</label>
                            <input type="hidden" name="types[]" value="contact_phone">
                            <input type="text" class="form-control" placeholder="{{ localize('Phone') }}"
                                name="contact_phone" value="{{ getSetting('contact_phone') }}">
                        </div>

                        <div class="form-group">
                            <label>{{ localize('Email') }}</label>
                            <input type="hidden" name="types[]" value="contact_email">
                            <input type="text" class="form-control" placeholder="{{ localize('Email') }}"
                                name="contact_email" value="{{ getSetting('contact_email') }}">
                        </div>


                        <div class="form-group">
                            <label>{{ localize('Copyright Text') }}</label>
                            <input type="hidden" name="types[]" value="frontend_copyright_text">
                            <textarea class="yest-text-editor form-control" name="frontend_copyright_text"
                                data-buttons='[["font", ["bold", "underline", "italic"]],["insert", ["link"]],["color", ["color"]]]'
                                placeholder="Type.." data-min-height="100">{{ getSetting('frontend_copyright_text') }}
                                    </textarea>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Update') }}</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
@endsection
