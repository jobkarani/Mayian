@extends('backend.layouts.app')

@section('content')

    @can('manage_language_settings')
        <div class="row">
            <div class="col-lg-4">

                <div class="card">
                    <div class="card-body">
                        <form class="form-horizontal" action="{{ route('languages.save_default_language') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label class="col-from-label">{{ localize('Default Language') }}</label>
                                <select class="form-control yest-selectpicker" name="DEFAULT_LANGUAGE" data-live-search="true"
                                    data-selected="{{ env('DEFAULT_LANGUAGE') }}">
                                    @foreach (\App\Models\Language::where('status', 1)->get() as $key => $language)
                                        <option value="{{ $language->code }}">{{ $language->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header row gutters-5">
                        <div class="col text-left">
                            <h5 class="mb-md-0 h6">{{ localize('Language List') }}</h5>
                        </div>
                        <div class="col text-right">
                            <a href="{{ route('languages.create') }}" class="btn btn-primary">
                                <span>{{ localize('Add Language') }}</span>
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table yest-table mb-0">
                            <thead>
                                <tr>
                                    <th>{{ localize('Name') }}</th>
                                    <th data-breakpoints="md">{{ localize('Code') }}</th>
                                    <th data-breakpoints="md">{{ localize('Status') }}</th>
                                    <th class="text-right">{{ localize('Options') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($languages as $key => $language)
                                    <tr>
                                        <td>{{ $language->name }}</td>
                                        <td class="text-uppercase fw-500">{{ $language->code }}</td>
                                        <td>
                                            <label class="yest-switch yest-switch-success mb-0">
                                                <input onchange="update_status(this)" value="{{ $language->id }}"
                                                    type="checkbox" @if ($language->status == 1) checked @endif>
                                                <span class="slider round"></span>
                                            </label>
                                        </td>
                                        <td class="text-right">
                                            <a class="btn btn-warning btn-icon btn-sm"
                                                href="{{ route('languages.show', $language->id) }}">
                                                <i class="lab la-telegram"></i>
                                            </a>
                                            @if ($language->code != 'en')
                                                <a class="btn btn-primary btn-icon btn-sm"
                                                    href="{{ route('languages.edit', $language->id) }}">
                                                    <i class="las la-edit"></i>
                                                </a>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="yest-pagination">
                            {{ $languages->appends(request()->input())->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endcan

@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection


@section('script')
    <script type="text/javascript">
        function update_status(el) {
            if (el.checked) {
                var status = 1;
            } else {
                var status = 0;
            }
            $.post('{{ route('languages.update_status') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            }, function(data) {
                if (data == 1) {
                    setTimeout(() => {
                        location.reload();
                    }, 300);
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }

        function update_rtl_status(el) {
            if (el.checked) {
                var status = 1;
            } else {
                var status = 0;
            }
            $.post('{{ route('languages.update_rtl_status') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            }, function(data) {
                if (data == 1) {
                    setTimeout(() => {
                        location.reload();
                    }, 300);
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }
    </script>
@endsection
