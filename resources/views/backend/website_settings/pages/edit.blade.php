@extends('backend.layouts.app')

@section('content')
    <form class="form form-horizontal mar-top" action="{{ route('custom-pages.update', $page->id) }}" method="POST"
        enctype="multipart/form-data">
        @csrf
        <div class="yest-titlebar text-left mb-3 pt-1">
            <div class="d-flex align-items-center mb-2">
                <h5 class="d-flex align-items-center h6 mb-0">{{ localize('Edit Page for') }}</h5>
                @include('backend.inc.editLang', ['lang' => $lang])
            </div>
        </div>
        <div class="card">
            <input type="hidden" name="_method" value="PATCH">
            <input type="hidden" name="lang" value="{{ $lang }}">
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Title') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <input type="text" class="form-control" placeholder="Title" name="title"
                            value="{{ $page->getTranslation('title', $lang) }}" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Link') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <div class="input-group">
                            @if ($page->type == 'custom_page')
                                <div class="input-group-prepend"><span
                                        class="input-group-text">{{ route('home') }}/links/</span>
                                </div>
                                <input type="text" class="form-control" placeholder="{{ localize('Slug') }}"
                                    name="slug" value="{{ $page->slug }}">
                            @else
                                <input class="form-control" value="{{ route('home') }}/{{ $page->slug }}" disabled>
                            @endif
                        </div>
                        <small class="form-text text-muted">{{ localize('Use character, number, hypen only') }}</small>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-12 col-from-label" for="name">{{ localize('Update Content') }} <span
                            class="text-danger">*</span></label>
                    <div class="col-sm-12">
                        <textarea class="yest-text-editor form-control"placeholder="{{ localize('Update page contents') }}"
                            data-min-height="200" name="content" required>
						@php
          echo $page->getTranslation('content', $lang);
      @endphp
					</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-right">
            <button type="submit" class="btn btn-primary">{{ localize('Update Page') }}</button>
        </div>


    </form>
@endsection
