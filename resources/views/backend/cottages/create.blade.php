@extends('backend.layouts.app')

@section('content')
    <form class="form form-horizontal mar-top" action="{{ route('cottages.store') }}" method="POST"
        enctype="multipart/form-data" id="cottage_form">
        @csrf
        <div class="row gutters-5">
            <div class="col-12 col-lg-10 mx-auto">
                <div class="yest-titlebar text-left mb-3 pt-1">
                    <h5 class="mb-0 h6">{{ localize('Add New Cottage') }}</h5>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Cottage Name') }} <span
                                    class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name"
                                placeholder="{{ localize('Cottage Name') }}" required>
                        </div>


                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Price') }} <span class="text-danger">*</span></label>

                            <input type="number" class="form-control" name="price" min="0.001" step="0.001"
                                required>

                        </div>

                        <div class="form-group">
                            <label class="col-from-label d-none">{{ localize('Timeline') }} <span
                                    class="text-danger">*</span></label>

                            <input type="hidden" class="form-control" name="timeline" value="night">

                        </div>

                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Number of Rooms') }} <span
                                    class="text-danger">*</span></label>

                            <input type="number" class="form-control" name="num_of_rooms" value="1" min="1"
                                required>

                        </div>
                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Number of Beds') }} <span
                                    class="text-danger">*</span></label>

                            <input type="number" class="form-control" name="num_of_beds" value="1" min="1"
                                required>

                        </div>

                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Size') }} <span class="text-danger">*</span></label>

                            <input type="text" class="form-control" name="size"
                                placeholder="{{ localize('e.g. 250 Square Feet') }}" required>

                        </div>

                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Rating') }}</label>
                            <select class="form-control yest-selectpicker" name="rating">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Status') }}</label>

                            <select class="form-control yest-selectpicker" name="is_published">
                                <option value="0">{{ localize('Unpublished') }}</option>
                                <option value="1" selected>{{ localize('Published') }}</option>
                            </select>

                        </div>

                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Youtube Video Link') }}</label>

                            <input type="url" class="form-control" name="video_link"
                                placeholder="{{ localize('https:///youtube.com/abcde') }}">

                        </div>

                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label class="col-form-label" for="thumbnail_image">{{ localize('Thumbnail Image') }}
                                <small>(770x580)</small></label>

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
                        <div class="form-group">
                            <label class="col-form-label"
                                for="signinSrEmail">{{ localize('Gallery Images') }}<small>(1920x1080)</small></label>

                            <div class="input-group" data-toggle="yesMediaUploader" data-type="image" data-multiple="true">
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

                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Description') }}</label>

                            <textarea class="yest-text-editor" name="description"></textarea>

                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Meta Title') }}</label>

                            <input type="text" class="form-control" name="meta_title"
                                placeholder="{{ localize('Meta Title') }}">

                        </div>
                        <div class="form-group">
                            <label class="col-from-label">{{ localize('Description') }}</label>

                            <textarea name="meta_description" rows="8" class="form-control"></textarea>

                        </div>
                        <div class="form-group">
                            <label class="col-form-label" for="signinSrEmail">{{ localize('Meta Image') }}</label>

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
                <div class="mar-all text-right mb-3">
                    <button type="submit" class="btn btn-primary"
                        id="upload-cottage">{{ localize('Save Cottage') }}</button>
                </div>
            </div>
        </div>

    </form>
@endsection

@section('script')
    <script type="text/javascript">
        "use strict";
        $('#cottage_form').bind('submit', function(e) {
            // Disable the submit button while form submitting
            $("#upload-cottage").prop('disabled', true);
            var valid = true;
            if (!valid) {
                e.preventDefault();
                // Reactivate the button if the form was not submitted
                $("#upload-cottage").button.prop('disabled', false);
            }
        });
    </script>
@endsection
