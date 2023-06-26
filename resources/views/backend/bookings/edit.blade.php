@extends('backend.layouts.app')

@section('content')
    <form class="form form-horizontal mar-top" action="{{ route('bookings.update') }}" method="POST"
        enctype="multipart/form-data" id="cottage_form">
        @csrf
        <input type="hidden" name="id" value="{{ $booking->id }}">
        <div class="row gutters-5">
            <div class="col-12 col-md-10 mx-auto">
                <div class="yest-titlebar text-left mb-3 pt-1">
                    <h5 class="mb-0 h6">{{ localize('Booking Details') }}</h5>
                </div>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-bordered mb-0">
                            <tbody>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Booking Code') }}</td>
                                    <td class="fw-700">
                                        {{ getSetting('booking_code_prefix') . '#' . $booking->id }}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Cottage') }}</td>
                                    <td>
                                        <a class="fw-700" href="{{ route('home') }}/cottages/{{ $booking->cottage->slug }}"
                                            target="_blank" rel="noopener noreferrer">
                                            {{ $booking->cottage->getTranslation('name') }}
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Guest Details') }}</td>
                                    <td>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Name') }}:
                                                {{ $booking->user->name }}</span></div>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Email') }}:
                                                {{ $booking->user->email }}</span></div>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Phone') }}:
                                                {{ $booking->user->phone }}</span></div>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Adults') }}:
                                                {{ $booking->adults }}</span>
                                        </div>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Children') }}:
                                                {{ $booking->children }}</span></div>
                                        <div class="mb-1"><span class="fw-700 ml-1">{{ localize('Address') }}:
                                                {{ $booking->address }}</span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Check In') }}</td>
                                    <td>

                                        <div><span class="fw-700 ml-1">
                                                {{ date('d M, Y', $booking->check_in_date) }}</span></div>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Checkout') }}</td>
                                    <td>
                                        <div><span class="fw-700 ml-1">
                                                {{ date('d M, Y', $booking->check_out_date) }}</span></div>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Staying nights') }}</td>
                                    <td>
                                        <div><span class="fw-700 ml-1">
                                                {{ $booking->staying_nights }}</span></div>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Total Bill') }}</td>
                                    <td>
                                        <div><span class="fw-700 ml-1">
                                                {{ formatPrice($booking->cost) }}</span></div>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Additional Info') }}</td>
                                    <td>
                                        <div><span class="fw-700 ml-1">
                                                {{ $booking->additional_info ?? '-' }}</span></div>

                                    </td>
                                </tr>

                                <tr>
                                    <td class="col-3 fw-700">{{ localize('Status') }}</td>
                                    <td>
                                        <div class="form-group">
                                            <select class="form-control yest-selectpicker" name="status"
                                                data-selected="{{ $booking->status }}">
                                                <option value="pending">{{ localize('Pending') }}</option>
                                                <option value="confirmed">{{ localize('Confirmed') }}</option>
                                                <option value="cancelled">{{ localize('Cancelled') }}</option>
                                            </select>
                                        </div>

                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="mar-all text-right mb-3">
                    <button type="submit" class="btn btn-primary">{{ localize('Update Booking') }}</button>
                </div>
            </div>
        </div>

    </form>
@endsection
