@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="d-flex align-items-center mb-2">
                <h5 class="d-flex align-items-center h6 mb-0">{{ localize('Edit blog for') }}</h5>
                @include('backend.inc.editLang', ['lang' => $lang])
            </div>
            <form id="add_form" class="form-horizontal" action="{{ route('blogs.update', $blog->id) }}" method="POST">
                @csrf

                <input type="hidden" name="id" value="{{ $blog->id }}">
                <input type="hidden" name="lang" value="{{ $lang }}">

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
                                    value="{{ $blog->getTranslation('title', $lang) }}" name="title" class="form-control"
                                    required>
                            </div>
                        </div>

                        @if ($lang == env('DEFAULT_LANGUAGE'))
                            <div class="form-group row" id="category">
                                <label class="col-md-3 col-from-label">
                                    {{ localize('Category') }}
                                    <span class="text-danger">*</span>
                                </label>
                                <div class="col-md-12">
                                    <select class="form-control yest-selectpicker" name="category_id" id="category_id"
                                        data-selected="{{ $blog->category_id }}" data-live-search="true" required>
                                        <option value="">{{ localize('Select a category') }}</option>
                                        @foreach ($blog_categories as $category)
                                            <option value="{{ $category->id }}">
                                                {{ $category->getTranslation('name', $lang) }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        @endif

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label">
                                {{ localize('Short Description') }}
                                <span class="text-danger">*</span>
                            </label>
                            <div class="col-md-12">
                                <textarea name="short_description" rows="5" class="form-control" required="">{{ $blog->getTranslation('short_description', $lang) }}</textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">
                                {{ localize('Description') }}
                            </label>
                            <div class="col-md-12">
                                <textarea class="yest-text-editor" name="description">{{ $blog->getTranslation('description', $lang) }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>


                @if ($lang == env('DEFAULT_LANGUAGE'))
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="col-md-12 col-form-label"
                                    for="thumbnail_image">{{ localize('Thumbnail Image') }}
                                    <small>(800x600)</small></label>
                                <div class="col-md-12">
                                    <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">
                                                {{ localize('Browse') }}</div>
                                        </div>
                                        <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                        <input type="hidden" name="thumbnail_image" class="chosen-files"
                                            value="{{ $blog->thumbnail_image }}">
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
                                        <input type="hidden" name="photos" class="chosen-files"
                                            value="{{ $blog->gallery_images }}">
                                    </div>
                                    <div class="view-file box sm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="col-from-label">{{ localize('Meta Title') }}</label>

                                <input type="text" class="form-control" name="meta_title"
                                    value="{{ $blog->meta_title }}" placeholder="{{ localize('Meta Title') }}">
                            </div>
                            <div class="form-group">
                                <label class="col-from-label">{{ localize('Description') }}</label>

                                <textarea name="meta_description" rows="8" class="form-control">{{ $blog->meta_description }}</textarea>

                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="signinSrEmail">{{ localize('Meta Image') }}</label>

                                <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">
                                            {{ localize('Browse') }}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                    <input type="hidden" name="meta_image" class="chosen-files"
                                        value="{{ $blog->meta_image }}">
                                </div>
                                <div class="view-file box sm">
                                </div>
                            </div>
                        </div>
                    </div>
                @endif


                <div class="form-group mb-0 text-right">
                    <button type="submit" class="btn btn-primary">
                        {{ localize('Save') }}
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
