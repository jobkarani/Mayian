@extends('backend.layouts.app')

@section('content')

    <div class="row">
        @can('manage_currency_settings')
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <form class="form-horizontal" action="{{ route('settings.update') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label class="control-label">{{ localize('Default Currency') }}</label>
                                <select class="form-control yest-selectpicker" name="system_default_currency"
                                    data-live-search="true" data-selected="{{ getSetting('system_default_currency') }}">
                                    @foreach ($active_currencies as $key => $currency)
                                        <option value="{{ $currency->id }}">{{ $currency->name }}</option>
                                    @endforeach
                                </select>
                                <input type="hidden" name="types[]" value="system_default_currency">
                            </div>
                            <div class="form-group mb-0">
                                <button type="submit" class="btn btn-sm btn-primary">{{ localize('Save') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header row gutters-5">
                        <div class="col text-left">
                            <h5 class="mb-md-0 h6">{{ localize('Currency List') }}</h5>
                        </div>
                        <div class="col text-right">
                            <a onclick="currency_modal()" href="#" class="btn btn-primary">
                                <span>{{ localize('Add Currency') }}</span>
                            </a>
                        </div>
                    </div>

                    <div class="card-body">
                        <table class="table yest-table mb-0">
                            <thead>
                                <tr>
                                    <th>{{ localize('S/L') }}</th>
                                    <th>{{ localize('Currency name') }}</th>
                                    <th data-breakpoints="sm md">{{ localize('Alignment') }}</th>
                                    <th>{{ localize('Code') }}</th>
                                    <th data-breakpoints="sm md">{{ localize('1 USD = ?') }}</th>
                                    <th data-breakpoints="sm md">{{ localize('Status') }}</th>
                                    <th data-breakpoints="sm md" class="text-right">{{ localize('Options') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($currencies as $key => $currency)
                                    <tr>
                                        <td>{{ $key + 1 + ($currencies->currentPage() - 1) * $currencies->perPage() }}</td>
                                        <td>
                                            <div>{{ $currency->name }} ({{ $currency->symbol }})</div>
                                        </td>
                                        <td>
                                            {{ $currency->alignment == 0 ? '[Symbol][Amount]' : '[Amount][Symbol]' }}
                                        </td>
                                        <td>{{ $currency->code }}</td>
                                        <td>{{ $currency->exchange_rate }}</td>
                                        <td>
                                            <label class="yest-switch yest-switch-success mb-0">
                                                <input onchange="update_currency_status(this)" value="{{ $currency->id }}"
                                                    type="checkbox" @if ($currency->status == 1) checked @endif>
                                                <span class="slider round"></span>
                                            </label>
                                        </td>
                                        <td class="text-right">
                                            <a class="btn btn-primary btn-icon btn-sm text-white"
                                                onclick="edit_currency_modal('{{ $currency->id }}');">
                                                <i class="las la-edit"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="yest-pagination">
                            {{ $currencies->appends(request()->input())->links() }}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    @endcan

@endsection

@section('modal')
    <!-- Delete Modal -->
    @include('backend.inc.delete_modal')

    <div class="modal fade" id="add_currency_modal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" id="modal-content">

            </div>
        </div>
    </div>

    <div class="modal fade" id="currency_modal_edit">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" id="modal-content">

            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        "use strict";

        // currency modal
        function currency_modal() {
            $.get('{{ route('currency.create') }}', function(data) {
                $('#modal-content').html(data);
                $('#add_currency_modal').modal('show');
                YEST.libraries.bootstrapSelect("refresh");
            });
        }

        // update currency
        function update_currency_status(el) {
            if (el.checked) {
                var status = 1;
            } else {
                var status = 0;
            }

            $.post('{{ route('currency.update_status') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            }, function(data) {
                if (data == 1) {
                    YEST.libraries.notify('success', '{{ localize('Currency Status updated successfully') }}');
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }

        // edit currency 
        function edit_currency_modal(id) {
            $.post('{{ route('currency.edit') }}', {
                _token: '{{ @csrf_token() }}',
                id: id
            }, function(data) {
                $('#currency_modal_edit .modal-content').html(data);
                $('#currency_modal_edit').modal('show', {
                    backdrop: 'static'
                });

                YEST.libraries.bootstrapSelect("refresh");
            });
        }
    </script>
@endsection
