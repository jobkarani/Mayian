@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <form action="{{ route('website.topFeatures.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                @include('backend.website_settings.homepage.nav')

                <div class="card" id="adNewSlider">
                    <div class="card-header">
                        <h6 class="mb-0">{{ localize('Add Top Feature') }}</h6>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Ttile') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="{{ localize('Free Wifi') }}"
                                    name="title">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Feature Image') }}
                                <small>(512x512)</small></label>

                            <div class="input-group col-md-12" data-toggle="yesMediaUploader" data-type="image">
                                <div class="input-group-prepend">
                                    <div class="input-group-text bg-soft-secondary font-weight-medium">
                                        {{ localize('Browse') }}</div>
                                </div>
                                <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                <input type="hidden" name="image" class="chosen-files">
                            </div>
                            <div class="col-md-12 view-file box sm"></div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </div>
                </div>
            </form>

            <div class="card">
                <div class="card-header">
                    <h6 class="mb-0">{{ localize('Top Features') }}</h6>
                </div>
                <div class="card-body pt-0">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th class="w-40px">{{ localize('S/L') }}</th>
                                <th>{{ localize('Image') }}</th>
                                <th>{{ localize('Title') }}</th>
                                <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $topFeaturesArray = [];
                                if (!is_null($top_features) && $top_features != '') {
                                    $topFeaturesArray = json_decode($top_features);
                                }
                            @endphp
                            @foreach ($topFeaturesArray as $key => $topFeature)
                                <tr>
                                    <td class="v-align-middle">{{ $key + 1 }}</td>
                                    <td class="v-align-middle">
                                        <img src="{{ uploadedAsset($topFeature->image) }}" class="img-fluid h-60px"
                                            alt="">
                                    </td>
                                    <td class="v-align-middle"> {{ $topFeature->title }}</td>

                                    <td class="text-right v-align-middle">
                                        @can('delete_products')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                                data-href="{{ route('website.topFeatures.delete', $topFeature->id) }}">
                                                <i class="las la-trash"></i>
                                            </a>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
