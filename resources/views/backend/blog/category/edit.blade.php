@extends('backend.layouts.app')

@section('content')
    <div class="col-lg-8 mx-auto">
        <div class="d-flex align-items-center mb-2">
            <h5 class="d-flex align-items-center h6 mb-0">{{ localize('Edit category for') }}</h5>
            @include('backend.inc.editLang', ['lang' => $lang])
        </div>

        <div class="card">
            <div class="card-body p-0">
                <form class="p-4" action="{{ route('blog-category.update', $category->id) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <input name="_method" type="hidden" value="PATCH">
                    <input type="hidden" name="lang" value="{{ $lang }}">

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="name">{{ localize('Name') }}</label>
                        <div class="col-sm-12">
                            <input type="text" placeholder="{{ localize('Name') }}" id="name" name="name"
                                value="{{ $category->getTranslation('name', $lang) }}" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
