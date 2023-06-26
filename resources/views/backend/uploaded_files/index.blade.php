@extends('backend.layouts.app')

@section('content')
    {{-- add new files  --}}
    <h6 class="mb-3">{{ localize('Add new files') }}</h6>
    <div class="card card-body">
        <div id="upload-media-files">
        </div>
    </div>

    {{-- all files  --}}
    <div class="mt-4">
        <form action="">
            <div class="row gutters-5">
                <div class="col-md-3 d-flex align-items-center">

                    <div class="mr-2 mb-3 mb-md-0">
                        <button type="submit" class="btn btn-warning"><i class="las la-sync"></i></button>
                    </div>

                    <h5 class="h6 mb-3 mb-md-0">{{ localize('Media files') }}</h5>

                </div>
                <div class="col-md-3 ml-auto">
                    <input type="text" class="form-control form-control-xs  mb-3 mb-md-0" name="search"
                        placeholder="{{ localize('Search by name') }}" value="{{ $search }}">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary">{{ localize('Search') }}</button>
                </div>
            </div>
        </form>
        <div class="mt-3">
            <div class="row gutters-5">
                @foreach ($all_uploads as $key => $file)
                    @php
                        if ($file->file_original_name == null) {
                            $file_name = localize('Unknown');
                        } else {
                            $file_name = $file->file_original_name;
                        }
                    @endphp
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <div class="yest-file-box">
                            <div class="border rounded card-file card-file-action-wrapper media-file-select c-default p-3"
                                title="{{ $file_name }}.{{ $file->extension }}">
                                <div class="uppy-thumbnail-image">
                                    @if ($file->type == 'image')
                                        <img src="{{ my_asset($file->file_name) }}" class="img-fit rounded">
                                    @elseif($file->type == 'video')
                                        <i class="las la-file-video"></i>
                                    @else
                                        <i class="las la-file"></i>
                                    @endif
                                </div>
                                <div class="rounded mt-2">
                                    <h6 class="d-flex">
                                        <span class="text-truncate title fw-400">{{ $file_name }}</span>
                                        <span class="ext fw-400">.{{ $file->extension }}</span>
                                    </h6>
                                </div>

                                @can('delete_media')
                                    <div class="justify-content-start mt-3 card-file-actions bg-soft-info px-2 py-1 rounded">
                                        <a href="#" class="h5 p-1 text-danger mb-0 bg-light rounded confirm-delete"
                                            data-href="{{ route('uploaded-files.destroy', $file->id) }}"
                                            data-target="#delete-modal">
                                            <i class="las la-trash"></i>
                                        </a>
                                    </div>
                                @endcan
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="yest-pagination mt-3">
                {{ $all_uploads->appends(request()->input())->links() }}
            </div>
        </div>
    </div>
@endsection
@section('modal')
    @include('backend.inc.delete_modal')

    <div id="info-modal" class="modal fade">
        <div class="modal-dialog modal-dialog-center">
            <div class="modal-content min-h-300px">
                <div class="modal-header">
                    <h5 class="modal-title h6">{{ localize('File Info') }}</h5>
                    <button type="button" class="close" data-dismiss="modal">
                    </button>
                </div>
                <div class="modal-body c-scrollbar-light position-relative" id="info-modal-content">
                    <div class="c-preloader text-center absolute-center">
                        <i class="las la-spinner la-spin la-3x opacity-70"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script type="text/javascript">
        "use strict";

        // init uppy
        $(document).ready(function() {
            YEST.fileUploader.uppyUploader();
        });
    </script>
@endsection
