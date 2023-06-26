@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_products" action="" method="GET">
            <div class="card-header row gutters-5 mx-0">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All Events') }}</h5>
                </div>
                <div class="col-md-4 ml-auto">
                    <div class="input-group d-flex">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ localize('Search by title') }}">
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
                        <th class="col-md-3">{{ localize('Title') }}</th>
                        <th data-breakpoints="sm md">{{ localize('Start Date') }}</th>
                        <th data-breakpoints="sm md">{{ localize('End Date') }}</th>
                        <th data-breakpoints="sm md" class="text-right">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($events as $key => $event)
                        <tr>
                            <td class="v-align-middle">{{ $key + 1 + ($events->currentPage() - 1) * $events->perPage() }}
                            </td>
                            <td class="v-align-middle">
                                <div class="d-flex align-items-center">
                                    <img src="{{ uploadedAsset($event->thumbnail_image) }}" alt="Image"
                                        class="size-40px mr-2 rounded-circle"
                                        onerror="this.onerror=null;this.src='{{ staticAsset('/assets/img/placeholder.jpg') }}';" />

                                </div>
                            </td>

                            <td class="v-align-middle">
                                <div class="d-flex align-items-center">
                                    <span class="flex-grow-1 minw-0">
                                        <div class="text-truncate-2 fs-12 fw-600">
                                            {{ $event->getTranslation('title') }}</div>
                                    </span>
                                </div>
                            </td>

                            <td class="v-align-middle">{{ date('d-m-Y', $event->start_date) }}</td>
                            <td class="v-align-middle">{{ date('d-m-Y', $event->end_date) }}</td>

                            <td class="text-right v-align-middle">
                                <a class="btn btn-warning btn-icon btn-sm mb-1"
                                    href="{{ route('home') }}/events/{{ $event->slug }}" target="_blank"
                                    title="{{ localize('View') }}">
                                    <i class="las la-eye"></i>
                                </a>
                                @can('edit_events')
                                    <a class="btn btn-primary btn-icon btn-sm mb-1"
                                        href="{{ route('events.edit', ['id' => $event->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endcan
                                @can('delete_events')
                                    <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                        data-href="{{ route('events.destroy', $event->id) }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $events->appends(request()->input())->links() }}
            </div>
        </div>
    </div>

    @php
        
    @endphp
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
