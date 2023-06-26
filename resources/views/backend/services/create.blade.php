@extends('backend.layouts.app')

@section('content')
    <form class="form form-horizontal mar-top" action="{{ route('services.store') }}" method="POST"
        enctype="multipart/form-data" id="service_form">
        @csrf
        <div class="row gutters-5">
            <div class="col-12 col-lg-10 mx-auto">
                <div class="yest-titlebar text-left mb-3 pt-1">
                    <h5 class="mb-0 h6">{{ localize('Add New Service') }}</h5>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('General Information') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Service Name') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="name"
                                    placeholder="{{ localize('Service Name') }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Short Description') }}</label>
                            <div class="col-md-12">
                                <textarea name="short_description" rows="5" class="form-control"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('Service Images') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Thumbnail Image') }}
                                <small>(400x600)</small></label>
                            <div class="col-md-12">
                                <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">
                                            {{ localize('Browse') }}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                    <input type="hidden" name="thumbnail_image" class="chosen-files">
                                </div>
                                <div class="view-file box sm">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label"
                                for="photos">{{ localize('Gallery Images') }}<small>(1920x1080)</small></label>
                            <div class="col-md-12">
                                <div class="input-group" data-toggle="yesMediaUploader" data-type="image"
                                    data-multiple="true">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">
                                            {{ localize('Browse') }}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                    <input type="hidden" name="photos" class="chosen-files">
                                </div>
                                <div class="view-file box sm">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('Service Description') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Description') }}</label>
                            <div class="col-md-12">
                                <textarea class="yest-text-editor" name="description"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('SEO Meta Tags') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Meta Title') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="meta_title"
                                    placeholder="{{ localize('Meta Title') }}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Meta Description') }}</label>
                            <div class="col-md-12">
                                <textarea name="meta_description" rows="8" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label"
                                for="signinSrEmail">{{ localize('Meta Image') }}</label>
                            <div class="col-md-12">
                                <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">
                                            {{ localize('Browse') }}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                    <input type="hidden" name="meta_image" class="chosen-files">
                                </div>
                                <div class="view-file box sm">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mar-all text-right mb-3">
                    <button type="submit" class="btn btn-primary"
                        id="upload-service">{{ localize('Save Service') }}</button>
                </div>
            </div>
        </div>

    </form>
@endsection

@section('script')
    <script type="text/javascript">
        $('#service_form').bind('submit', function(e) {
            // Disable the submit button while evaluating if the form should be submitted
            $("#upload-service").prop('disabled', true);
            var valid = true;
            if (!valid) {
                e.preventDefault();
                // Reactivate the button if the form was not submitted
                $("#upload-service").button.prop('disabled', false);
            }
        });
    </script>
@endsection
