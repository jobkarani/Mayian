@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <form action="{{ route('website.partners.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                @include('backend.website_settings.homepage.nav')

                <div class="card" id="adNewSlider">
                    <div class="card-header">
                        <h6 class="mb-0">{{ localize('Add Partner') }}</h6>
                    </div>
                    <div class="card-body">

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="avatar">{{ localize('Image') }}
                                <small>(126x40)</small></label>

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
                    <h6 class="mb-0">{{ localize('Our Partners') }}</h6>
                </div>
                <div class="card-body pt-0">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th>{{ localize('S/L') }}</th>
                                <th>{{ localize('Image') }}</th>
                                <th data-breakpoints="sm" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $slidersArray = [];
                                if (!is_null($partners) && $partners != '') {
                                    $slidersArray = json_decode($partners);
                                }
                            @endphp
                            @foreach ($slidersArray as $key => $slider)
                                <tr>
                                    <td class="v-align-middle">{{ $key + 1 }}</td>
                                    <td class="v-align-middle">
                                        <img src="{{ uploadedAsset($slider->image) }}" class="img-fluid h-40px"
                                            alt="">
                                    </td>


                                    <td class="text-right v-align-middle">
                                        @can('delete_products')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                                data-href="{{ route('website.partners.delete', $slider->id) }}">
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
