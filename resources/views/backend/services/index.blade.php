@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_products" action="" method="GET">
            <div class="card-header row gutters-5 mx-0">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All Services') }}</h5>
                </div>
                <div class="col-md-4 ml-auto">
                    <div class="input-group d-flex">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ localize('Search by name') }}">
                        <button type="submit" class="btn btn-primary btn-sm ml-1"><i class="la la-search"></i></button>
                    </div>
                </div>
            </div>
        </form>
        <div class="card-body">
            <table class="table yest-table mb-0">
                <thead>
                    <tr>
                        <th class="w-40px">{{ localize('S/L') }}</th>
                        <th>{{ localize('Image') }}</th>
                        <th>{{ localize('Name') }}</th>
                        <th>{{ localize('Best') }}</th>
                        <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($services as $key => $service)
                        <tr>
                            <td class="v-align-middle">
                                {{ $key + 1 + ($services->currentPage() - 1) * $services->perPage() }}</td>
                            <td class="v-align-middle">
                                <div class="d-flex align-items-center">
                                    <img src="{{ uploadedAsset($service->thumbnail_image) }}" alt="Image"
                                        class="size-40px mr-2 rounded-circle"
                                        onerror="this.onerror=null;this.src='{{ staticAsset('/assets/img/placeholder.jpg') }}';" />

                                </div>
                            </td>
                            <td class="v-align-middle">
                                <div class="d-flex align-items-center">
                                    <span class="flex-grow-1 minw-0">
                                        <div class="text-truncate-2 fs-12 fw-600">
                                            {{ $service->getTranslation('name') }}</div>
                                    </span>
                                </div>
                            </td>

                            <td class="v-align-middle">
                                <label class="yest-switch yest-switch-primary mb-0">
                                    <input onchange="update_best(this)" value="{{ $service->id }}" type="checkbox"
                                        @if ($service->is_best == 1) checked @endif>
                                    <span class="slider round"></span>
                                </label>
                            </td>

                            <td class="text-right v-align-middle">
                                <a class="btn btn-warning btn-icon btn-sm mb-1"
                                    href="{{ route('home') }}/services/{{ $service->slug }}" target="_blank"
                                    title="{{ localize('View') }}">
                                    <i class="las la-eye"></i>
                                </a>
                                @can('edit_services')
                                    <a class="btn btn-primary btn-icon btn-sm mb-1"
                                        href="{{ route('services.edit', ['id' => $service->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endcan
                                @can('delete_services')
                                    <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                        data-href="{{ route('services.destroy', $service->id) }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $services->appends(request()->input())->links() }}
            </div>
        </div>
    </div>

    @php
        
    @endphp
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection


@section('script')
    <script type="text/javascript">
        "use strict";

        function update_best(el) {
            if (el.checked) {
                var status = 1;
            } else {
                var status = 0;
            }
            $.post('{{ route('services.best') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            }, function(data) {
                if (data == 1) {
                    YEST.libraries.notify('success', '{{ localize('Status updated successfully') }}');
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }
    </script>
@endsection
