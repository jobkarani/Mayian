@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_products" action="" method="GET">
            <div class="card-header row gutters-5 mx-0">
                <div class="col-12 col-md text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All Bookings') }}</h5>
                </div>
                <div class="col-12 col-md ml-auto">
                    <div class="input-group d-flex">
                        <select class="form-control yest-selectpicker mr-2" name="sort_cottage"
                            @isset($sort_cottage) data-selected="{{ $sort_cottage }}"  @endisset>
                            <option value="">{{ localize('All Cottages') }}</option>
                            @foreach (\App\Models\Cottage::latest()->get() as $cottage)
                                <option value="{{ $cottage->id }}">{{ $cottage->getTranslation('name') }}</option>
                            @endforeach
                        </select>

                        <select class="form-control yest-selectpicker" name="sort_status"
                            @isset($sort_status) data-selected="{{ $sort_status }}"  @endisset>
                            <option value="">{{ localize('All Bookings') }}</option>
                            <option value="pending">{{ localize('Pending') }}</option>
                            <option value="confirmed">{{ localize('Confirmed') }}</option>
                            <option value="cancelled">{{ localize('Cancelled') }}</option>
                        </select>
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
                        <th data-breakpoints="md">{{ localize('Cottage') }}</th>
                        <th class="col-xl-2">{{ localize('User') }}</th>
                        <th data-breakpoints="md">{{ localize('Check In') }}</th>
                        <th data-breakpoints="md">{{ localize('Check Out') }}</th>
                        <th data-breakpoints="md">{{ localize('Status') }}</th>
                        <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($bookings as $key => $booking)
                        <tr>
                            <td>{{ $key + 1 + ($bookings->currentPage() - 1) * $bookings->perPage() }}</td>

                            <td>
                                <a href="{{ route('home') }}/cottages/{{ $booking->cottage->slug }}" target="_blank"
                                    rel="noopener noreferrer" class="fw-500">
                                    {{ $booking->cottage->getTranslation('name') }}
                                </a>
                            </td>

                            <td>
                                <span class="flex-grow-1 minw-0">
                                    <div class=" text-truncate-2 fs-12">
                                        {{ $booking->user->name }}</div>
                                </span>
                                <div>
                                    {{ $booking->phone }}
                                </div>
                            </td>

                            <td>
                                {{ date('d M, Y', $booking->check_in_date) }}
                            </td>
                            <td>
                                {{ date('d M, Y', $booking->check_out_date) }}

                            </td>
                            <td>
                                <span class="badge badge-{{ getBookingStatusClass($booking->status) }} text-capitalize">
                                    {{ $booking->status }}
                                </span>

                            </td>

                            <td class="text-right">
                                <a class="btn btn-primary btn-icon btn-sm mb-1"
                                    href="{{ route('bookings.edit', $booking->id) }}" title="{{ localize('View') }}">
                                    <i class="las la-eye"></i>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $bookings->appends(request()->input())->links() }}
            </div>
        </div>
    </div>
@endsection
