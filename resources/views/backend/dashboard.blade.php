@extends('backend.layouts.app')

@section('content')
    @can('show_dashboard')
        <div class="row">
            <div class="col-md-6 pr-2">
                <div class="row gutters-5">
                    <div class="col-sm-6 col-md-6">
                        <div class="card shadow-none h-110px p-4 p-xl-2 p-xxl-4 mb-3 bg-primary rounded-lg">
                            <div class="card-body py-0 d-flex">
                                <div class="row gutters-10 align-items-center">
                                    <div class="col-auto text-right border p-2 rounded">
                                        <i class="las la-hotel fs-24 text-white"></i>
                                    </div>
                                    <div class="col">
                                        <h3 class="mb-0 text-white">{{ \App\Models\Cottage::count() }}</h3>
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-arrow-down fe-12"></span>
                                            <span class="fs-12 fw-600 text-white">{{ localize('Cottages') }}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <div class="card shadow-none h-110px p-4 p-xl-2 p-xxl-4 mb-3 bg-pink rounded-lg">
                            <div class="card-body py-0 d-flex">
                                <div class="row gutters-10 align-items-center">
                                    <div class="col-auto text-right border p-2 rounded">
                                        <i class="las la-bed fs-24 text-white"></i>
                                    </div>
                                    <div class="col">
                                        <h3 class="mb-0 text-white">{{ \App\Models\Booking::count() }}</h3>
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-arrow-down fe-12"></span>
                                            <span class="fs-12 fw-600 text-white">{{ localize('Bookings') }}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <div class="card shadow-none h-110px p-4 p-xl-2 p-xxl-4 mb-3 bg-danger rounded-lg">
                            <div class="card-body py-0 d-flex">
                                <div class="row gutters-10 align-items-center">
                                    <div class="col-auto text-right border p-2 rounded">
                                        <i class="las la-user-friends fs-24 text-white"></i>
                                    </div>
                                    <div class="col">
                                        <h3 class="mb-0 text-white">
                                            {{ \App\Models\User::where('user_type', 'customer')->count() }}</h3>
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-arrow-down fe-12"></span>
                                            <span class="fs-12 fw-600 text-white">{{ localize('Guests') }}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <div class="card shadow-none h-110px p-4 p-xl-2 p-xxl-4 mb-3 bg-secondary rounded-lg">
                            <div class="card-body py-0 d-flex">
                                <div class="row gutters-10 align-items-center">
                                    <div class="col-auto text-right border p-2 rounded">
                                        <i class="las la-calendar-check fs-24 text-white"></i>
                                    </div>
                                    <div class="col">
                                        <h3 class="mb-0 text-white">{{ \App\Models\Event::count() }}</h3>
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-arrow-down fe-12"></span>
                                            <span class="fs-12 fw-600 text-white">{{ localize('Events & Meetings') }}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- configurations --}}
            <div class="col-md-6 pl-2">
                <div class="row gutters-5 dashboard-configuration">
                    {{-- General Configuration --}}
                    @can('manage_general_settings')
                        <div class="col-sm-6 col-md-6">
                            <a href="{{ route('general_setting.index') }}">
                                <div class="border p-3 rounded h-110px mb-3 c-pointer text-center bg-light">

                                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve"
                                        width="46.015" height="48" viewBox="0 0 46.015 48">
                                        <g>
                                            <path
                                                d="M494.701,212.481l-28.245-5.44c-26.524-5.091-38.686-36.072-22.715-57.848l17.728-24.17
                                                    c6.228-8.491,5.329-20.256-2.117-27.702l-38.293-38.293c-7.233-7.233-18.581-8.314-27.05-2.577l-23.808,16.128
                                                    c-22.352,15.131-52.859,1.819-56.978-24.867L308.682,18.1C307.085,7.688,298.128,0,287.595,0h-54.165
                                                    c-10.232,0-19.022,7.264-20.951,17.312l-6.997,36.459c-4.995,25.931-34.876,38.311-56.751,23.498l-30.74-20.82
                                                    c-8.468-5.736-19.816-4.654-27.048,2.578L52.648,97.32c-7.446,7.446-8.345,19.211-2.117,27.702l17.728,24.171
                                                    c15.971,21.776,3.809,52.756-22.702,57.845l-28.258,5.442C7.257,214.415,0,223.203,0,233.429v54.144
                                                    c0,10.528,7.68,19.482,18.085,21.085l29.632,4.565c26.699,4.105,40.01,34.618,24.862,56.976L56.45,394.009
                                                    c-5.737,8.468-4.655,19.817,2.577,27.05l38.293,38.293c7.446,7.446,19.211,8.345,27.702,2.117l24.171-17.728
                                                    c21.776-15.971,52.764-3.809,57.869,22.712l5.416,28.233C214.406,504.735,223.197,512,233.429,512h54.165
                                                    c10.532,0,19.488-7.686,21.086-18.096l3.2-20.843c4.199-27.285,35.833-40.394,58.097-24.07l16.993,12.473
                                                    c8.491,6.233,20.26,5.335,27.708-2.113l38.293-38.293c7.233-7.233,8.314-18.581,2.577-27.05l-16.128-23.808
                                                    c-15.149-22.359-1.838-52.872,24.855-56.976l29.638-4.566C504.32,307.055,512,298.101,512,287.573v-54.144
                                                    C512,223.203,504.743,214.415,494.701,212.481z M469.333,269.275l-11.547,1.779c-57.654,8.865-86.411,74.78-53.688,123.077
                                                    l6.244,9.217l-12.886,12.886l-2.242-1.646c-48.101-35.266-116.436-6.949-125.506,51.99l-0.423,2.754h-18.228l-2.097-10.931
                                                    c-11.027-57.294-77.962-83.566-125.003-49.066l-9.412,6.903l-12.89-12.89l6.245-9.219
                                                    c32.722-48.296,3.966-114.211-53.695-123.077l-11.541-1.778v-18.229l10.947-2.108c57.275-10.994,83.553-77.935,49.051-124.978
                                                    l-6.903-9.412l12.891-12.891l16.152,10.94c47.243,31.991,111.785,5.253,122.576-50.77l3.677-19.16h18.226l1.768,11.532
                                                    c8.899,57.651,74.781,86.398,123.072,53.707l9.225-6.249l12.89,12.89l-6.903,9.411c-34.503,47.044-8.225,113.984,49.063,124.981
                                                    l10.934,2.106V269.275z" />
                                            <path
                                                d="M256,149.327c-58.907,0-106.667,47.759-106.667,106.667S197.093,362.66,256,362.66s106.667-47.759,106.667-106.667
                                                    S314.907,149.327,256,149.327z M256,319.994c-35.343,0-64-28.657-64-64s28.657-64,64-64s64,28.657,64,64
                                                    S291.343,319.994,256,319.994z" />
                                        </g>
                                    </svg>

                                    <div class="alpha-7 p-2 text-dark">
                                        {{ localize('General Settings') }}
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endcan

                    {{-- Email Configuration --}}
                    @can('manage_smtp_settings')
                        <div class="col-sm-6 col-md-6">
                            <a href="{{ route('smtp_settings.index') }}">
                                <div class="border p-3 rounded h-110px mb-3 c-pointer text-center bg-light">
                                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="100%"
                                        height="48" viewBox="0 0 46.015 54" style="enable-background:new 0 0 59 59;"
                                        xml:space="preserve">
                                        <g>
                                            <path
                                                d="M58.188,39.364l-1.444-0.278c-0.677-0.13-1.21-0.573-1.462-1.215c-0.253-0.643-0.163-1.33,0.245-1.886l0.907-1.236
                                            c0.292-0.398,0.25-0.95-0.1-1.299l-1.959-1.958c-0.339-0.338-0.87-0.389-1.269-0.12l-1.216,0.824
                                            c-0.572,0.389-1.263,0.45-1.895,0.175c-0.632-0.276-1.055-0.825-1.16-1.507l-0.233-1.515c-0.075-0.488-0.495-0.848-0.988-0.848
                                            h-2.77c-0.479,0-0.892,0.34-0.982,0.811l-0.358,1.865c-0.127,0.663-0.558,1.191-1.181,1.449c-0.625,0.259-1.301,0.189-1.86-0.189
                                            l-1.572-1.065c-0.395-0.267-0.929-0.217-1.268,0.121l-1.959,1.958c-0.35,0.349-0.392,0.901-0.1,1.299l0.907,1.236
                                            c0.408,0.557,0.498,1.244,0.245,1.887c-0.252,0.642-0.785,1.085-1.462,1.215l-1.444,0.278C33.34,39.455,33,39.867,33,40.346v2.769
                                            c0,0.494,0.36,0.913,0.848,0.988l1.515,0.233c0.683,0.105,1.232,0.528,1.508,1.16c0.276,0.632,0.213,1.323-0.175,1.895
                                            l-0.824,1.217c-0.269,0.397-0.218,0.929,0.121,1.268l1.958,1.958c0.349,0.35,0.901,0.391,1.298,0.1l1.237-0.907
                                            c0.556-0.407,1.243-0.496,1.885-0.246c0.643,0.252,1.086,0.786,1.216,1.463l0.277,1.444c0.091,0.471,0.503,0.812,0.982,0.812h2.77
                                            c0.493,0,0.913-0.36,0.988-0.848l0.164-1.066c0.105-0.687,0.552-1.256,1.194-1.521c0.644-0.266,1.359-0.18,1.92,0.231l0.869,0.638
                                            c0.398,0.291,0.948,0.25,1.299-0.099l1.958-1.958c0.339-0.339,0.39-0.871,0.121-1.268l-0.824-1.217
                                            c-0.388-0.572-0.451-1.262-0.175-1.895c0.275-0.632,0.825-1.055,1.508-1.16l1.515-0.233C58.64,44.028,59,43.609,59,43.115v-2.769
                                            C59,39.867,58.66,39.455,58.188,39.364z M57,42.257l-0.667,0.103c-1.354,0.208-2.488,1.082-3.036,2.336
                                            c-0.548,1.255-0.416,2.682,0.352,3.816l0.361,0.534l-0.768,0.767l-0.178-0.13c-1.128-0.827-2.574-1.002-3.868-0.466
                                            c-1.294,0.536-2.192,1.682-2.405,3.065L46.758,52.5h-1.086l-0.121-0.633c-0.259-1.345-1.175-2.447-2.45-2.947
                                            c-1.274-0.5-2.695-0.314-3.798,0.495l-0.545,0.399l-0.768-0.768l0.361-0.534c0.768-1.134,0.899-2.561,0.352-3.816
                                            c-0.548-1.255-1.683-2.128-3.036-2.336L35,42.257v-1.085l0.633-0.122c1.345-0.259,2.446-1.174,2.947-2.448
                                            c0.5-1.275,0.315-2.696-0.494-3.801l-0.399-0.544l0.768-0.768l0.889,0.602c1.109,0.752,2.509,0.895,3.747,0.382
                                            c1.237-0.513,2.127-1.604,2.38-2.919l0.202-1.054h1.086l0.103,0.667c0.208,1.354,1.082,2.488,2.337,3.036
                                            c1.255,0.547,2.682,0.416,3.816-0.353l0.532-0.361l0.768,0.768l-0.399,0.544c-0.81,1.104-0.994,2.525-0.494,3.8
                                            c0.501,1.274,1.603,2.189,2.947,2.448L57,41.172V42.257z" />
                                            <path
                                                d="M46,36.5c-2.757,0-5,2.243-5,5s2.243,5,5,5s5-2.243,5-5S48.757,36.5,46,36.5z M46,44.5c-1.654,0-3-1.346-3-3s1.346-3,3-3
		                                    s3,1.346,3,3S47.654,44.5,46,44.5z" />
                                            <path
                                                d="M25.369,28.353c1.002,0.894,2.317,1.341,3.633,1.341c1.313,0,2.626-0.446,3.625-1.337L56,7.717V28.5c0,0.552,0.447,1,1,1
                                            s1-0.448,1-1v-23c0-0.008-0.005-0.015-0.005-0.023c-0.003-0.111-0.019-0.223-0.06-0.331c-0.003-0.007-0.008-0.012-0.011-0.019
                                            c-0.01-0.026-0.028-0.046-0.04-0.071c-0.041-0.082-0.09-0.157-0.151-0.224c-0.026-0.028-0.053-0.052-0.082-0.077
                                            c-0.062-0.054-0.129-0.099-0.203-0.137c-0.033-0.017-0.063-0.035-0.098-0.048C57.24,4.529,57.124,4.5,57,4.5H1
                                            c-0.124,0-0.24,0.029-0.351,0.071C0.614,4.584,0.584,4.602,0.551,4.619C0.478,4.656,0.41,4.701,0.348,4.756
                                            C0.319,4.781,0.292,4.804,0.266,4.833C0.205,4.899,0.156,4.974,0.115,5.057c-0.012,0.024-0.029,0.045-0.04,0.07
                                            C0.073,5.134,0.067,5.139,0.064,5.146c-0.041,0.108-0.057,0.22-0.06,0.331C0.005,5.485,0,5.492,0,5.5v39
                                            c0,0.003,0.002,0.006,0.002,0.009c0.001,0.107,0.017,0.214,0.053,0.319c0.004,0.013,0.013,0.022,0.018,0.034
                                            c0.013,0.034,0.033,0.062,0.05,0.094c0.039,0.075,0.083,0.144,0.138,0.205c0.027,0.03,0.055,0.057,0.086,0.083
                                            c0.061,0.054,0.127,0.097,0.2,0.135c0.034,0.017,0.064,0.037,0.1,0.05C0.759,45.471,0.876,45.5,1,45.5h28c0.553,0,1-0.448,1-1
                                            s-0.447-1-1-1H3.879c4.548-3.604,14.801-11.78,20.069-16.402L25.369,28.353z M54.356,6.5L31.299,26.861
                                            c-1.267,1.132-3.331,1.131-4.602-0.003l-1.978-1.746c-0.006-0.007-0.007-0.016-0.014-0.023c-0.024-0.027-0.057-0.038-0.083-0.062
                                            L3.644,6.5H54.356z M2,42.437V7.717l20.437,18.046C16.881,30.617,6.086,39.204,2,42.437z" />
                                        </g>
                                    </svg>
                                    <div class="alpha-7 p-2 text-dark">{{ localize('SMTP Configuration') }}</div>
                                </div>
                            </a>
                        </div>
                    @endcan

                    {{-- Language Configuration --}}
                    @can('manage_language_settings')
                        <div class="col-sm-6 col-md-6">
                            <a href="{{ route('languages.index') }}">
                                <div class="border p-3 rounded h-110px mb-3 c-pointer text-center bg-light">

                                    <svg width="100%" height="48" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M 4 4 L 4 22 L 10 22 L 10 28 L 28 28 L 28 10 L 22 10 L 22 4 Z M 6 6 L 20 6 L 20 10.5625 L 10.5625 20 L 6 20 Z M 11 8 L 11 9 L 8 9 L 8 11 L 12.9375 11 C 12.808594 12.148438 12.457031 13.054688 11.875 13.6875 C 11.53125 13.574219 11.222656 13.433594 10.96875 13.28125 C 10.265625 12.863281 10 12.417969 10 12 L 8 12 C 8 13.191406 8.734375 14.183594 9.71875 14.84375 C 9.226563 14.949219 8.65625 15 8 15 L 8 17 C 9.773438 17 11.25 16.59375 12.375 15.84375 C 12.898438 15.933594 13.429688 16 14 16 L 14 14.125 C 14.542969 13.214844 14.832031 12.152344 14.9375 11 L 16 11 L 16 9 L 13 9 L 13 8 Z M 21.4375 12 L 26 12 L 26 26 L 12 26 L 12 21.4375 Z M 20 13.84375 L 19.0625 16.6875 L 17.0625 22.6875 L 17 22.84375 L 17 24 L 19 24 L 19 23.125 L 19.03125 23 L 20.96875 23 L 21 23.125 L 21 24 L 23 24 L 23 22.84375 L 22.9375 22.6875 L 20.9375 16.6875 Z M 20 20.125 L 20.28125 21 L 19.71875 21 Z" />
                                    </svg>

                                    <div class="alpha-7 p-2 text-dark">{{ localize('Language Settings') }}</div>
                                </div>
                            </a>
                        </div>
                    @endcan

                    {{-- Currency Configuration --}}
                    @can('manage_currency_settings')
                        <div class="col-sm-6 col-md-6">
                            <a href="{{ route('currency.index') }}">
                                <div class="border p-3 rounded h-110px mb-3 c-pointer text-center bg-light">
                                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 486 486" height="48" width="100%"
                                        style="enable-background:new 0 0 486 486;" xml:space="preserve">
                                        <g>
                                            <path
                                                d="M243,0C108.8,0,0,108.8,0,243s108.8,243,243,243s243-108.8,243-243S377.2,0,243,0z M312.8,338.8
                                            c-10.6,12.9-24.4,21.6-40.5,26c-7,1.9-10.2,5.6-9.8,12.9c0.3,7.2,0,14.3-0.1,21.5c0,6.4-3.3,9.8-9.6,10
                                            c-4.1,0.1-8.2,0.2-12.3,0.2c-3.6,0-7.2,0-10.8-0.1c-6.8-0.1-10-4-10-10.6c-0.1-5.2-0.1-10.5-0.1-15.7c-0.1-11.6-0.5-12-11.6-13.8
                                            c-14.2-2.3-28.2-5.5-41.2-11.8c-10.2-5-11.3-7.5-8.4-18.3c2.2-8,4.4-16,6.9-23.9c1.8-5.8,3.5-8.4,6.6-8.4c1.8,0,4.1,0.9,7.2,2.5
                                            c14.4,7.5,29.7,11.7,45.8,13.7c2.7,0.3,5.4,0.5,8.1,0.5c7.5,0,14.8-1.4,21.9-4.5c17.9-7.8,20.7-28.5,5.6-40.9
                                            c-5.1-4.2-11-7.3-17.1-10c-15.7-6.9-32-12.1-46.8-21c-24-14.4-39.2-34.1-37.4-63.3c2-33,20.7-53.6,51-64.6
                                            c12.5-4.5,12.6-4.4,12.6-17.4c0-4.4-0.1-8.8,0.1-13.3c0.3-9.8,1.9-11.5,11.7-11.8c1.1,0,2.3,0,3.4,0c1.9,0,3.8,0,5.7,0
                                            c0.8,0,1.6,0,2.3,0c18.6,0,18.6,0.8,18.7,20.9c0.1,14.8,0.1,14.8,14.8,17.1c11.3,1.8,22,5.1,32.4,9.7c5.7,2.5,7.9,6.5,6.1,12.6
                                            c-2.6,9-5.1,18.1-7.9,27c-1.8,5.4-3.5,7.9-6.7,7.9c-1.8,0-4-0.7-6.8-2.1c-14.4-7-29.5-10.4-45.3-10.4c-2,0-4.1,0.1-6.1,0.2
                                            c-4.7,0.3-9.3,0.9-13.7,2.8c-15.6,6.8-18.1,24-4.8,34.6c6.7,5.4,14.4,9.2,22.3,12.5c13.8,5.7,27.6,11.2,40.7,18.4
                                            C330.9,250.9,342.1,303.2,312.8,338.8z" />
                                        </g>
                                    </svg>
                                    <div class="alpha-7 p-2 text-dark">{{ localize('Currency Configuration') }}</div>
                                </div>
                            </a>
                        </div>
                    @endcan
                </div>
            </div>

            {{-- best cottages --}}
            <div class="col-12">
                <div class="card">
                    <div class="card-header row gutters-5">
                        <div class="col text-left">
                            <h5 class="mb-md-0 h6">{{ localize('Best Cottages') }}</h5>
                        </div>
                        <div class="col text-right">
                            @can('add_currencies')
                                <a href="{{ route('cottages.create') }}" class="btn btn-primary">
                                    <span>{{ localize('Add New Cottage') }}</span>
                                </a>
                            @endcan
                        </div>
                    </div>

                    @include('backend.inc.bestCottages')
                </div>
            </div>
        </div>
    @endcan
@endsection
