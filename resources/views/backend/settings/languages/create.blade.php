@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 h6">{{ localize('Language Information') }}</h5>
                </div>
                <div class="card-body">
                    <form class="form-horizontal" action="{{ route('languages.store') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <label class="col-from-label">{{ localize('Name') }}</label>
                            </div>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" name="name"
                                    placeholder="{{ localize('Name') }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-12">
                                <label class="control-label">{{ localize('ISO 639-1 Code') }}</label>
                            </div>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" name="code"
                                    placeholder="{{ localize('EN/BN') }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-12">
                                <label class="col-from-label">{{ localize('Country Flag') }}</label>
                            </div>
                            <div class="col-lg-12">
                                <select class="form-control yest-selectpicker mb-2 mb-md-0" name="flag"
                                    data-live-search="true">
                                    @foreach (\File::files(base_path('public/assets/img/flags')) as $path)
                                        <option value="{{ pathinfo($path)['filename'] }}"
                                            data-content="<div class=''><img src='{{ staticAsset('assets/img/flags/' . pathinfo($path)['filename'] . '.png') }}' class='mr-2'><span>{{ strtoupper(pathinfo($path)['filename']) }}</span></div>">
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group mb-0 text-right">
                            <button type="submit" class="btn btn-sm btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
