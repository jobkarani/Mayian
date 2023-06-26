@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <form action="{{ route('website.hero.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                @include('backend.website_settings.homepage.nav')

                <div class="card" id="adNewSlider">
                    <div class="card-header">
                        <h6 class="mb-0">{{ localize('Add Slider') }}</h6>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Ttile') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control"
                                    placeholder="{{ localize('Choose the best resort for weekend') }}" name="title">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Youtube Video Link') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control"
                                    placeholder="https://www.youtube.com/watch?v=mZ77D66ZYtw" name="link">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Slider Image') }}
                                <small>(1920x1080)</small></label>

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
                    <h6 class="mb-0">{{ localize('Hero Sliders') }}</h6>
                </div>
                <div class="card-body pt-0">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th class="w-40px">{{ localize('S/L') }}</th>
                                <th>{{ localize('Slider') }}</th>
                                <th>{{ localize('Title') }}</th>
                                <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $slidersArray = [];
                                if (!is_null($sliders) && $sliders != '') {
                                    $slidersArray = json_decode($sliders);
                                }
                            @endphp
                            @foreach ($slidersArray as $key => $slider)
                                <tr>
                                    <td class="v-align-middle">{{ $key + 1 }}</td>
                                    <td class="v-align-middle">
                                        <img src="{{ uploadedAsset($slider->image) }}" class="img-fluid h-60px"
                                            alt="">
                                    </td>
                                    <td class="v-align-middle">
                                        <a href="{{ $slider->link }}" target="_blank"
                                            rel="noopener noreferrer">{{ $slider->title }}</a>
                                    </td>

                                    <td class="text-right v-align-middle">
                                        @can('delete_products')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                                data-href="{{ route('website.hero.delete', $slider->id) }}">
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
