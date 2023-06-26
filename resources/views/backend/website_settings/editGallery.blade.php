@extends('backend.layouts.app')

@section('content')
    <form action="{{ route('website.gallery.update') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="id" value="{{ $gallery->id }}">
        <div class="card">
            <div class="card-header">
                <h6 class="mb-0">{{ localize('Update Gallery Image') }}</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-md-12 col-from-label">{{ localize('Order') }}
                        <small>({{ localize('Lower orders will be shown first') }})</small></label>
                    <div class="col-md-12">
                        <input type="number" class="form-control" placeholder="1" value="{{ $gallery->order }}"
                            name="order">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Image') }}</label>
                    <div class="input-group col-md-12" data-toggle="yesMediaUploader" data-type="image">
                        <div class="input-group-prepend">
                            <div class="input-group-text bg-soft-secondary font-weight-medium">
                                {{ localize('Browse') }}</div>
                        </div>
                        <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                        <input type="hidden" name="image" class="chosen-files" value="{{ $gallery->image }}">
                    </div>
                    <div class="col-md-12 view-file box sm"></div>
                </div>

                <div class="text-right">
                    <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                </div>
            </div>
        </div>
    </form>
@endsection
