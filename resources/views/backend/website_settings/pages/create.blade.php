@extends('backend.layouts.app')
@section('content')
    <form action="{{ route('custom-pages.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="card">
            <div class="card-header">
                <h6 class="fw-600 mb-0">{{ localize('Add New Page') }}</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Title') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <input type="text" class="form-control" placeholder="Title" name="title" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Link') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <div class="input-group">
                            <div class="input-group-prepend"><span
                                    class="input-group-text">{{ route('home') }}/links/</span>
                            </div>
                            <input type="text" class="form-control" placeholder="{{ localize('Slug') }}" name="slug"
                                required>
                        </div>
                        <small class="form-text text-muted">{{ localize('Use character, number, hypen only') }}</small>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Add Content') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <textarea class="yest-text-editor form-control" placeholder="{{ localize('Add page contents') }}" data-min-height="200"
                            name="content" required></textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-right">
            <button type="submit" class="btn btn-primary">{{ localize('Save Page') }}</button>
        </div>
    </form>
@endsection
