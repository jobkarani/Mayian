@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <form class="" id="sort_products" action="" method="GET">
                    <div class="card-header row gutters-5 mx-0">
                        <div class="col text-center text-md-left">
                            <h5 class="mb-md-0 h6">{{ localize('All Subscribers') }}</h5>
                        </div>
                        <div class="col-md-4 ml-auto">
                            <div class="input-group d-flex">
                                <input type="text" class="form-control form-control-sm" id="search" name="search"
                                    @isset($sort_search) value="{{ $sort_search }}" @endisset
                                    placeholder="{{ localize('Search by email') }}">
                                <button type="submit" class="btn btn-primary btn-sm ml-1"><i
                                        class="la la-search"></i></button>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="card-body">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th>{{ localize('S/L') }}</th>
                                <th>{{ localize('Email') }}</th>
                                <th>{{ localize('Subscribed At') }}</th>
                                <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($subscribers as $key => $subscriber)
                                <tr>
                                    <td>{{ $key + 1 + ($subscribers->currentPage() - 1) * $subscribers->perPage() }}</td>
                                    <td>{{ $subscriber->email }}</td>
                                    <td>{{ date('d M, Y', strtotime($subscriber->created_at)) }}</td>
                                    <td class="text-right v-align-middle">
                                        <a href="#" class="btn btn-danger btn-icon btn-sm mb-1 confirm-delete"
                                            data-href="{{ route('newsletter.deleteSubscribers', $subscriber->id) }}">
                                            <i class="las la-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="pull-right">
                            {{ $subscribers->appends(request()->input())->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
