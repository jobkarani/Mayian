@php
    $cottages = \App\Models\Cottage::isBest()
        ->latest()
        ->get();
@endphp
<div class="card-body">
    <table class="table yest-table mb-0">
        <thead>
            <tr>
                <th class="w-40px">{{ localize('S/L') }}</th>
                <th class="col-xl-4">{{ localize('Name') }}</th>
                <th data-breakpoints="md">{{ localize('Cost') }}/{{ localize('Night') }}</th>
                <th data-breakpoints="md">{{ localize('Total Booking') }}</th>
                <th data-breakpoints="md" class="text-right">{{ localize('Options') }}</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($cottages as $key => $cottage)
                <tr>
                    <td>{{ $key + 1 }}</td>
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
                        @php
                            $totalBooking = $cottage->bookings()->count();
                        @endphp
                        {{ $totalBooking }}
                    </td>

                    <td class="text-right">
                        <a class="btn btn-warning btn-icon btn-sm mb-1" target="_blank"
                            href="{{ route('home') }}/cottages/{{ $cottage->slug }}" title="{{ localize('View') }}">
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
</div>
