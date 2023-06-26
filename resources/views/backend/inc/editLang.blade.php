@php
    $language = \App\Models\Language::where('code', $lang)->first();
@endphp
<div class="align-items-center d-flex dropdown justify-content-end">
    <a class="dropdown-toggle no-arrow" data-toggle="dropdown" href="javascript:void(0);" role="button"
        aria-haspopup="false" aria-expanded="false">
        <span class="btn btn-sm text-dark px-2 pr-md-3 d-flex align-items-center">
            <img src="{{ staticAsset('assets/img/flags/' . $language->flag . '.png') }}" height="11">
            <span class="language ml-2 fw-600">{{ $language->name }} <i class="las la-angle-down fs-12"></i></span>
        </span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right dropdown-menu-xs">
        @foreach (\App\Models\Language::where('status', 1)->get() as $key => $language)
            <li>
                <a href="javascript:void(0)" data-flag="{{ $language->code }}"
                    class="dropdown-item @if ($lang == $language->code) active @endif"
                    onclick="localizeData('{{ $language->code }}')">
                    <img src="{{ staticAsset('assets/img/flags/' . $language->flag . '.png') }}" class="mr-2">
                    <span class="language">{{ $language->name }}</span>
                </a>
            </li>
        @endforeach
    </ul>
</div>
