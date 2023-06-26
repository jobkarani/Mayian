@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_products" action="" method="GET">
            <div class="card-header row gutters-5 mx-0">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All Cottages') }}</h5>
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
                        <th class="col-xl-2">{{ localize('Name') }}</th>
                        <th data-breakpoints="md">{{ localize('Cost') }}/{{ localize('Night') }}</th>
                        <th data-breakpoints="md">{{ localize('Rooms') }}</th>
                        <th data-breakpoints="md">{{ localize('Beds') }}</th>
                        <th data-breakpoints="md">{{ localize('Best') }}</th>
                        <th data-breakpoints="md">{{ localize('Published') }}</th>
                        <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($cottages as $key => $cottage)
                        <tr>
                            <td>{{ $key + 1 + ($cottages->currentPage() - 1) * $cottages->perPage() }}</td>
                            <td>
                                <span class="flex-grow-1 minw-0">
                                    <div class=" text-truncate-2 fs-12">
                                        {{ $cottage->getTranslation('name') }}</div>
                                </span>
                                <div><span>{{ localize('Rating') }}</span>: <span
                                        class="rating rating-sm my-2">{{ renderStarRating($cottage->rating) }}</span>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <span class="fw-600">{{ formatPrice($cottage->price) }}
                                    </span>
                                </div>
                            </td>

                            <td>
                                {{ $cottage->num_of_rooms }}
                            </td>
                            <td>
                                {{ $cottage->num_of_beds }}
                            </td>

                            <td>
                                <label class="yest-switch yest-switch-primary mb-0">
                                    <input onchange="update_best(this)" value="{{ $cottage->id }}" type="checkbox"
                                        @if ($cottage->is_best == 1) checked @endif>
                                    <span class="slider round"></span>
                                </label>
                            </td>
                            <td>
                                <label class="yest-switch yest-switch-success mb-0">
                                    <input onchange="update_published(this)" value="{{ $cottage->id }}" type="checkbox"
                                        @if ($cottage->is_published == 1) checked @endif>
                                    <span class="slider round"></span>
                                </label>
                            </td>
                            <td class="text-right">
                                <a class="btn btn-warning btn-icon btn-sm mb-1" target="_blank"
                                    href="{{ route('home') }}/cottages/{{ $cottage->slug }}"
                                    title="{{ localize('View') }}">
                                    <i class="las la-eye"></i>
                                </a>
                                @can('edit_cottages')
                                    <a class="btn btn-primary btn-icon btn-sm mb-1"
                                        href="{{ route('cottages.edit', ['id' => $cottage->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $cottages->appends(request()->input())->links() }}
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
            $.post('{{ route('cottages.best') }}', {
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

        function update_published(el) {
            if (el.checked) {
                var status = 1;
            } else {
                var status = 0;
            }
            $.post('{{ route('cottages.published') }}', {
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
