<div class="yest-topbar border-bottom px-15px px-lg-25px d-flex align-items-stretch justify-content-between">

    <div class="yest-side-nav-logo-wrap align-items-center d-flex">
        <a href="{{ route('admin.dashboard') }}" class="d-none d-lg-block text-left">
            <img class="mw-100" src="{{ uploadedAsset(getSetting('admin_logo')) }}" class="brand-icon"
                alt="{{ getSetting('site_name') }}">
        </a>

        {{-- todo:: favicon dynamic --}}
        <a href="{{ route('admin.dashboard') }}" class="d-block d-lg-none text-left">
            <img class="mw-100" src="{{ staticAsset('frontend/img/icons/icon-512x512.png') }}" class="brand-icon"
                alt="{{ getSetting('site_name') }}">
        </a>

    </div>

    <div class="d-flex ml-4">
        <div class="yest-topbar-nav-toggler d-flex align-items-center justify-content-start mr-2">
            <button class="btn btn-sm btn-light text-dark px-3 d-flex align-items-center justify-content-center"
                data-toggle="yest-mobile-nav">
                <i class="las la-braille fw-700 fs-17 rotate-90"></i>
            </button>
        </div>
    </div>
    <div class="d-flex justify-content-between align-items-stretch flex-grow-lg-1">
        <div class="d-flex align-items-center">
            <div class="d-none d-md-flex justify-content-around align-items-center align-items-stretch">
                <div class="yest-topbar-item align-items-center">
                    <a class="btn btn-sm  btn-light text-dark d-flex align-items-center px-3" href="{{ route('home') }}"
                        target="_blank">
                        <i class="las la-globe fs-17"></i>
                    </a>
                </div>
            </div>
            <div class="mx-2 d-none d-md-flex">
                <div class="input-group w-270px">
                    <form action="{{ route('guests.index') }}">
                        <div class="input-group d-flex">
                            <input type="text" class="form-control form-control-sm h-100 p-2" id="search"
                                name="search"
                                @isset($sort_search)
                        value="{{ $sort_search }}" @endisset
                                placeholder="{{ localize('Search guest by name..') }}">
                            <button type="submit" class="btn btn-primary btn-sm ml-1 py-0 pt-1"><i
                                    class="la la-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-around align-items-center align-items-stretch">

            <!-- currencies -->
            @php
                if (Session::has('currency_code')) {
                    $currency_code = Session::get('currency_code');
                } else {
                    $currency_code = env('DEFAULT_CURRENCY');
                }
                $localCurrency = \App\Models\Currency::where('code', $currency_code)->first();
            @endphp
            <div class="yest-topbar-item mr-2 d-none d-sm-flex">
                <div class="align-items-center d-flex dropdown" id="currency-change">
                    <a class="dropdown-toggle no-arrow" data-toggle="dropdown" href="javascript:void(0);" role="button"
                        aria-haspopup="false" aria-expanded="false">
                        <span class="btn btn-sm btn-light text-dark px-2 px-md-3 d-flex align-items-center">
                            <span class="language ml-2">{{ $localCurrency->code ?? 'USD' }} <i
                                    class="las la-angle-down fs-12"></i></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right dropdown-menu-xs">

                        @foreach (\App\Models\Currency::where('status', 1)->get() as $key => $currency)
                            <li>
                                <a href="javascript:void(0)" data-code="{{ $currency->code }}"
                                    class="dropdown-item @if ($currency_code == $currency->code) active @endif">
                                    <span class="language">{{ $currency->name }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>


            <!-- language -->
            @php
                if (Session::has('locale')) {
                    $locale = Session::get('locale', Config::get('app.locale'));
                } else {
                    $locale = env('DEFAULT_LANGUAGE');
                }
                $language = \App\Models\Language::where('code', $locale)->first();
            @endphp
            <div class="yest-topbar-item mr-0">
                <div class="align-items-center d-flex dropdown" id="lang-change">
                    <a class="dropdown-toggle no-arrow" data-toggle="dropdown" href="javascript:void(0);" role="button"
                        aria-haspopup="false" aria-expanded="false">
                        <span class="btn btn-sm btn-light text-dark px-2 px-md-3 d-flex align-items-center">
                            <img src="{{ staticAsset('assets/img/flags/' . $language->flag . '.png') }}"
                                height="11">
                            <span class="language ml-2">{{ $language->name }} <i
                                    class="las la-angle-down fs-12"></i></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right dropdown-menu-xs">

                        @foreach (\App\Models\Language::where('status', 1)->get() as $key => $language)
                            <li>
                                <a href="javascript:void(0)" data-flag="{{ $language->code }}"
                                    class="dropdown-item @if ($locale == $language->code) active @endif">
                                    <img src="{{ staticAsset('assets/img/flags/' . $language->flag . '.png') }}"
                                        class="mr-2">
                                    <span class="language">{{ $language->name }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>


            <div class="yest-topbar-item ml-2 mr-0">
                <div class="align-items-center d-flex dropdown">

                    <a class="dropdown-toggle no-arrow btn btn-sm btn-light text-dark px-2 px-md-3"
                        data-toggle="dropdown" href="javascript:void(0);" role="button" aria-haspopup="false"
                        aria-expanded="false">
                        <span class="d-flex align-items-center">
                            <span class="mr-0">
                                <i class="las la-user fw-500 fs-17"></i>
                            </span>
                        </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-xs">
                        <a href="{{ route('profile.index') }}" class="dropdown-item">
                            <span>{{ localize('Profile') }}</span>
                        </a>

                        <a href="{{ route('logout') }}" class="dropdown-item">
                            <span>{{ localize('Logout') }}</span>
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
