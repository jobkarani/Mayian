@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_products" action="" method="GET">
            <div class="card-header row gutters-5 mx-0">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All Guests') }}</h5>
                </div>
                <div class="col-md-4 ml-auto">
                    <div class="input-group d-flex">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ localize('Search by email') }}">
                        <button type="submit" class="btn btn-primary btn-sm ml-1"><i class="la la-search"></i></button>
                    </div>
                </div>
            </div>
        </form>
        <div class="card-body">
            <table class="table yest-table mb-0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ localize('Name') }}</th>
                        <th data-breakpoints="sm">{{ localize('Email Address') }}</th>
                        <th data-breakpoints="sm">{{ localize('Phone') }}</th>
                        <th class="text-right" data-breakpoints="sm">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($customers as $key => $user)
                        <tr class="{{ $user->banned ? 'text-danger' : '' }}">
                            <td>{{ $key + 1 + ($customers->currentPage() - 1) * $customers->perPage() }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->phone ?? '-' }}</td>
                            <td class="text-right">
                                @can('ban_guest')
                                    @if ($user->banned != 1)
                                        <a href="#" class="btn btn-danger btn-icon btn-sm"
                                            onclick="confirmGuestBan('{{ route('guests.ban', $user->id) }}');"
                                            title="{{ localize('Ban this guest') }}">
                                            <i class="las la-ban"></i>
                                        </a>
                                    @else
                                        <a href="#" class="btn btn-success btn-icon btn-sm"
                                            onclick="confirmGuestUnban('{{ route('guests.ban', $user->id) }}');"
                                            title="{{ localize('Unban this guest') }}">
                                            <i class="las la-check"></i>
                                        </a>
                                    @endif
                                @endcan

                                <a class="btn btn-primary btn-icon btn-sm" href="{{ route('guests.show', $user->id) }}"
                                    title="{{ localize('View') }}">
                                    <i class="las la-eye"></i>
                                </a>

                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $customers->appends(request()->input())->links() }}
            </div>
        </div>
    </div>


    <div class="modal fade" id="confirmGuestBan">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h6">{{ localize('Confirmation') }}</h5>
                    <button type="button" class="close" data-dismiss="modal"></button>
                </div>
                <div class="modal-body text-center">
                    <p class="fs-16 fw-500 mb-0">{{ localize('Continue to ban this guest?') }}</p>
                </div>
                <div class="modal-footer">
                    <a type="button" id="confirmation" class="btn btn-danger">{{ localize('Ban Guest') }}</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="confirmGuestUnban">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h6">{{ localize('Confirmation') }}</h5>
                    <button type="button" class="close" data-dismiss="modal"></button>
                </div>
                <div class="modal-body text-center">
                    <p class="fs-16 fw-500 mb-0">{{ localize('Continue to unban this guest?') }}</p>
                </div>
                <div class="modal-footer">
                    <a type="button" id="confirmationUnbanGuest" class="btn btn-success">{{ localize('Unban Guest') }}</a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        "use strict";

        //  ban
        function confirmGuestBan(url) {
            $('#confirmGuestBan').modal('show', {
                backdrop: 'static'
            });
            document.getElementById('confirmation').setAttribute('href', url);
        }

        // unban
        function confirmGuestUnban(url) {
            $('#confirmGuestUnban').modal('show', {
                backdrop: 'static'
            });
            document.getElementById('confirmationUnbanGuest').setAttribute('href', url);
        }
    </script>
@endsection
