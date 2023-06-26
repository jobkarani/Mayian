@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="yest-titlebar text-left mb-3 pt-1">
                <h5 class="mb-0 h6">{{ localize('Add New Blog') }}</h5>
            </div>
            <form id="add_form" class="form-horizontal" action="{{ route('blogs.store') }}" method="POST">
                @csrf
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('Blog Information') }}</h5>
                    </div>

                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label">
                                {{ localize('Blog Title') }}
                                <span class="text-danger">*</span>
                            </label>
                            <div class="col-md-12">
                                <input type="text" placeholder="{{ localize('Blog Title') }}" id="title"
                                    name="title" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group row" id="category">
                            <label class="col-md-3 col-from-label">
                                {{ localize('Category') }}
                                <span class="text-danger">*</span>
                            </label>
                            <div class="col-md-12">
                                <select class="form-control yest-selectpicker" name="category_id" id="category_id"
                                    data-live-search="true" required>
                                    <option value="">{{ localize('Select a category') }}</option>
                                    @foreach ($blog_categories as $category)
                                        <option value="{{ $category->id }}">
                                            {{ $category->getTranslation('name') }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label">
                                {{ localize('Short Description') }}
                                <span class="text-danger">*</span>
                            </label>
                            <div class="col-md-12">
                                <textarea name="short_description" rows="5" class="form-control" required=""></textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">
                                {{ localize('Description') }}
                            </label>
                            <div class="col-md-12">
                                <textarea class="yest-text-editor" name="description"></textarea>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('Blog Images') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Thumbnail Image') }}
                                <small>(800x600)</small></label>
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
                        <h5 class="mb-0 h6">{{ localize('SEO Information') }}</h5>
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

                        <div class="form-group mb-0 text-right">
                            <button type="submit" class="btn btn-primary">
                                {{ localize('Save') }}
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
