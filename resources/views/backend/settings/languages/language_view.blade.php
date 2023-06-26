@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <div class="card-header row gutters-5">
            <div class="col text-center text-md-left">
                <h5 class="mb-md-0 h6">{{ localize('Update Translations') }}: {{ $language->name }}</h5>
            </div>
            <div class="col-md-4">
                <form class="" id="sort_keys" action="" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ localize('Search by key') }}">
                        <button type="submit" class="btn btn-primary btn-sm ml-1"><i class="la la-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
        <form class="form-horizontal" action="{{ route('languages.key_value_store') }}" method="POST">
            @csrf
            <input type="hidden" name="id" value="{{ $language->id }}">
            <div class="card-body">
                <table class="table table-bordered demo-dt-basic" id="tranlation-table" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="text-center">#</th>
                            <th width="45%">{{ localize('Language Key') }}</th>
                            <th width="45%">{{ localize('Translations') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($lang_keys as $key => $translation)
                            <tr>
                                <td class="v-align-middle text-center">
                                    {{ $key + 1 + ($lang_keys->currentPage() - 1) * $lang_keys->perPage() }}</td>
                                <td class="key v-align-middle">{{ $translation->lang_value }}</td>
                                <td class="v-align-middle">
                                    <input type="text" class="form-control value" style="width:100%"
                                        name="values[{{ $translation->lang_key }}]"
                                        @if (($traslate_lang = \App\Models\Translation::where('lang', $language->code)->where('lang_key', $translation->lang_key)->latest()->first()) != null) value="{{ $traslate_lang->lang_value }}" @endif>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div class="d-flex align-items-center justify-content-between">
                    <div class="yest-pagination">
                        {{ $lang_keys->appends(request()->input())->links() }}
                    </div>

                    <div class="form-group mb-0">
                        <button type="button" class="btn btn-warning" onclick="copyTranslation()"><i
                                class="las la-sync"></i></button>
                        <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        "use strict";

        //translate in one click
        function copyTranslation() {
            $('#tranlation-table > tbody  > tr').each(function(index, tr) {
                $(tr).find('.value').val($(tr).find('.key').text());
            });
        }
    </script>
@endsection
