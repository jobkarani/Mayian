@extends('backend.layouts.app')

@section('content')
    <form class="form form-horizontal mar-top" action="{{ route('events.store') }}" method="POST" enctype="multipart/form-data"
        id="event_form">
        @csrf
        <div class="row gutters-5">
            <div class="col-12 col-lg-10 mx-auto">
                <div class="yest-titlebar text-left mb-3 pt-1">
                    <h5 class="mb-0 h6">{{ localize('Add New Event') }}</h5>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('General Information') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Event Title') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="title"
                                    placeholder="{{ localize('Event Title') }}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-12 control-label" for="start_date">{{ localize('Timeline') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control yest-date-range" name="date_range"
                                    placeholder="{{ localize('Select Dates') }}" data-format="DD-MM-Y HH:mm:ss"
                                    data-separator=" to " autocomplete="off" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Event Time') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="time"
                                    placeholder="{{ localize('10AM - 6PM') }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Fee') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="number" min="0" step="0.001" class="form-control" name="fee"
                                    required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Event Location') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="location"
                                    placeholder="{{ localize('Event Location') }}" required>
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
                        <h5 class="mb-0 h6">{{ localize('Event Images') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label" for="thumbnail_image">{{ localize('Thumbnail Image') }}
                                <small>(370x300)</small></label>
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
                            <label class="col-md-3 col-form-label"
                                for="photos">{{ localize('Gallery Images') }}<small>(900x500)</small></label>
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
                        <h5 class="mb-0 h6">{{ localize('Event Description') }}</h5>
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
                            <label class="col-md-12 col-from-label">{{ localize('Description') }}</label>
                            <div class="col-md-12">
                                <textarea name="meta_description" rows="8" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label"
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
                        id="upload-event">{{ localize('Save Event') }}</button>
                </div>
            </div>
        </div>

    </form>
@endsection

@section('script')
    <script type="text/javascript">
        $('#event_form').bind('submit', function(e) {
            // Disable the submit button while evaluating if the form should be submitted
            $("#upload-event").prop('disabled', true);
            var valid = true;
            if (!valid) {
                e.preventDefault();
                // Reactivate the button if the form was not submitted
                $("#upload-event").button.prop('disabled', false);
            }
        });
    </script>
@endsection
