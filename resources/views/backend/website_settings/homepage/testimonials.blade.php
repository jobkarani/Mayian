@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <form action="{{ route('website.testimonials.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                @include('backend.website_settings.homepage.nav')

                <div class="card" id="adNewSlider">
                    <div class="card-header">
                        <h6 class="mb-0">{{ localize('Add User Feedback') }}</h6>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Name') }}</label>
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="{{ localize('Type user name') }}"
                                    name="name" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="avatar">{{ localize('Avatar') }}
                                <small>(70x70)</small></label>

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

                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Rating') }}</label>
                            <div class="col-md-12">
                                <select class="form-control yest-selectpicker" name="rating" required>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-12 col-from-label">{{ localize('Remark') }}</label>
                            <div class="col-md-12">
                                <textarea rows="4" class="form-control" placeholder="{{ localize('Type remark') }}" name="remark" required></textarea>
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                        </div>
                    </div>
                </div>
            </form>

            <div class="card">
                <div class="card-header">
                    <h6 class="mb-0">{{ localize("What Client Say's") }}</h6>
                </div>
                <div class="card-body pt-0">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th class="w-40px">{{ localize('S/L') }}</th>
                                <th>{{ localize('Avatar') }}</th>
                                <th>{{ localize('Name') }}</th>
                                <th data-breakpoints="sm">{{ localize('Rating') }}</th>
                                <th data-breakpoints="md lg xl">{{ localize('Remark') }}</th>
                                <th data-breakpoints="sm" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $slidersArray = [];
                                if (!is_null($testimonials) && $testimonials != '') {
                                    $slidersArray = json_decode($testimonials);
                                }
                            @endphp
                            @foreach ($slidersArray as $key => $slider)
                                <tr>
                                    <td class="v-align-middle">{{ $key + 1 }}</td>
                                    <td class="v-align-middle">
                                        <img src="{{ uploadedAsset($slider->image) }}" class="img-fluid h-60px"
                                            alt="">
                                    </td>

                                    <td class="v-align-middle">{{ $slider->name }}</td>
                                    <td class="v-align-middle">
                                        <span class="rating rating-sm my-2">{{ renderStarRating($slider->rating) }}</span>

                                    </td>

                                    <td class="v-align-middle">
                                        {{ $slider->remark }}
                                    </td>

                                    <td class="text-right v-align-middle">
                                        @can('delete_products')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                                data-href="{{ route('website.testimonials.delete', $slider->id) }}">
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
