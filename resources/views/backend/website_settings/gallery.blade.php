@extends('backend.layouts.app')

@section('content')
    <form action="{{ route('website.gallery.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="card">
            <div class="card-header">
                <h6 class="mb-0">{{ localize('Add Gallery Image') }}</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-md-12 col-from-label">{{ localize('Order') }}
                        <small>({{ localize('Lower orders will be shown first') }})</small></label>
                    <div class="col-md-12">
                        <input type="number" class="form-control" placeholder="1" value="1" name="order">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-12 col-form-label" for="thumbnail_image">{{ localize('Image') }}</label>
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
            <h6 class="fw-600 mb-0">{{ localize('Galleries') }}</h6>
        </div>
        <div class="card-body">
            <table class="table yest-table mb-0">
                <thead>
                    <tr>
                        <th>{{ localize('S/L') }}</th>
                        <th>{{ localize('Slider') }}</th>
                        <th>{{ localize('Order') }}</th>
                        <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($galleries as $key => $gallery)
                        <tr>
                            <td class="v-align-middle">{{ $key + 1 }}</td>
                            <td class="v-align-middle">
                                <img src="{{ uploadedAsset($gallery->image) }}" class="img-fluid h-60px" alt="">
                            </td>
                            <td class="v-align-middle">
                                {{ $gallery->order }}
                            </td>

                            <td class="text-right v-align-middle">
                                @can('edit_products')
                                    <a href="{{ route('website.gallery.edit', $gallery->id) }}"
                                        class="btn btn-primary btn-icon btn-sm mb-1">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endcan
                                @can('delete_products')
                                    <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                        data-href="{{ route('website.gallery.delete', $gallery->id) }}">
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
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
