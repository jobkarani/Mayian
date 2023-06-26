<div class="yest-sidebar-wrap">
    <div class="yest-sidebar left c-scrollbar-light">

        {{-- show in mobile screen --}}
        <div class="yest-side-nav-logo-wrap align-items-center d-flex d-xl-none pt-3 pl-4">
            <a href="{{ route('admin.dashboard') }}" class="d-block text-left px-0">
                <img class="mw-100" src="{{ uploadedAsset(getSetting('admin_logo')) }}" class="brand-icon"
                    alt="{{ getSetting('site_name') }}">
            </a>
        </div>

        <div class="yest-side-nav-wrap">
            <ul class="yest-side-nav-list" data-toggle="yest-side-menu">
                <li class="yest-side-nav-item">
                    <a href="{{ route('admin.dashboard') }}" class="yest-side-nav-link">
                        <i class="las la-home"></i>
                        <span class="yest-side-nav-text">{{ localize('Dashboard') }}</span>
                    </a>
                </li>

                <!-- cottages -->
                @canany(['show_cottages', 'add_cottages', 'edit_cottages'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-hotel"></i>
                            <span class="yest-side-nav-text">{{ localize('Cottages') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <!--Submenu-->
                        <ul class="yest-side-nav-list level-2">
                            @can('add_cottages')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('cottages.create') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['cottages.create']) }}">
                                        <span class="yest-side-nav-text">
                                            {{ localize('Add New Cottage') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan

                            @can('show_cottages')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('cottages.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['cottages.index', 'cottages.edit']) }}">
                                        <span class="yest-side-nav-text">
                                            {{ localize('All Cottages') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                <!-- Bookings -->
                @php
                    $pendingBookingsCount = \App\Models\Booking::where('status', 'pending')->count();
                @endphp
                @can('show_bookings')
                    <li class="yest-side-nav-item">
                        <a href="{{ route('bookings.index') }}"
                            class="yest-side-nav-link {{ areActiveRoutes(['bookings.index', 'bookings.edit']) }}">
                            <i class="las la-bed"></i>
                            <span class="yest-side-nav-text d-flex justify-content-between">{{ localize('Bookings') }}
                                @if ($pendingBookingsCount > 0)
                                    <small
                                        class="badge badge-danger {{ areActiveRoutes(['bookings.index', 'bookings.edit'], 'badge-light') }} p-2">{{ localize('new') }}</small>
                                @endif
                            </span>
                        </a>
                    </li>
                @endcan


                <!-- Services -->
                @canany(['show_services', 'add_services', 'edit_services', 'delete_services'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-spa"></i>
                            <span class="yest-side-nav-text">{{ localize('Services') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <!--Submenu-->
                        <ul class="yest-side-nav-list level-2">
                            @can('add_services')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('services.create') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['services.create']) }}">
                                        <span class="yest-side-nav-text">
                                            {{ localize('Add New Service') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan

                            @can('show_services')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('services.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['services.index', 'services.edit']) }}">
                                        <span class="yest-side-nav-text">
                                            {{ localize('All Services') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                <!-- Events -->
                @canany(['show_events', 'add_events', 'edit_events', 'delete_events'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-calendar-check"></i>
                            <span class="yest-side-nav-text">{{ localize('Events') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <!--Submenu-->
                        <ul class="yest-side-nav-list level-2">
                            @can('add_events')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('events.create') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">
                                            {{ localize('Add New Event') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan

                            @can('show_events')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('events.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['events.index', 'events.edit']) }}">
                                        <span class="yest-side-nav-text">
                                            {{ localize('All Events') }}
                                        </span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                <!-- Staffs -->
                @canany(['show_staffs', 'show_roles'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-user-cog"></i>
                            <span class="yest-side-nav-text">{{ localize('Manage Staffs') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <ul class="yest-side-nav-list level-2">
                            @can('show_staffs')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('staffs.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['staffs.index', 'staffs.create', 'staffs.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('All Staffs') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('show_roles')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('roles.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['roles.index', 'roles.create', 'roles.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Roles') }}</span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                <!-- Customers -->
                @can('show_guests')
                    <li class="yest-side-nav-item">
                        <a href="{{ route('guests.index') }}"
                            class="yest-side-nav-link {{ areActiveRoutes(['guests.index', 'guests.show']) }}">
                            <i class="las la-user-friends"></i>
                            <span class="yest-side-nav-text">{{ localize('Manage Guests') }}</span>
                        </a>
                    </li>
                @endcan


                <!-- promotions -->
                @canany(['show_subscribers', 'send_emails'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-hashtag"></i>
                            <span class="yest-side-nav-text">{{ localize('Promotions') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <ul class="yest-side-nav-list level-2">

                            @can('show_subscribers')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('newsletter.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['newsletter.index']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Suscribers') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('send_emails')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('newsletter.create') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['newsletter.create', 'newsletter.send']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Send Emails') }}</span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                {{-- Blog --}}
                @canany(['show_blogs', 'show_blog_categories'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-edit"></i>
                            <span class="yest-side-nav-text">{{ localize('Blog System') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <ul class="yest-side-nav-list level-2">
                            @can('add_blogs')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('blogs.create') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['blogs.create']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Add New Blog') }}</span>
                                    </a>
                                </li>
                            @endcan
                            @can('show_blogs')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('blogs.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['blogs.index', 'blogs.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('All Blogs') }}</span>
                                    </a>
                                </li>
                            @endcan
                            @can('show_blog_categories')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('blog-category.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['blog-category.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Blog Categories') }}</span>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                <!-- Uploaded Files -->
                @can('show_media')
                    <li class="yest-side-nav-item">
                        <a href="{{ route('uploaded-files.index') }}"
                            class="yest-side-nav-link {{ areActiveRoutes(['uploaded-files.create']) }}">
                            <i class="las la-photo-video"></i>
                            <span class="yest-side-nav-text">{{ localize('Media Gallery') }}</span>
                        </a>
                    </li>
                @endcan

                <!-- Website Setup -->
                @canany(['manage_header', 'manage_homepage', 'manage_gallery', 'manage_pages', 'manager_footer'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-tv"></i>
                            <span class="yest-side-nav-text">{{ localize('Manage Website') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>

                        <ul class="yest-side-nav-list level-2">

                            @can('manage_header')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('website.header') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">{{ localize('Header') }}</span>
                                    </a>
                                </li>
                            @endcan


                            @can('manage_homepage')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('website.homepage') }}"
                                        class="yest-side-nav-link  {{ areActiveRoutes(['website.homepage', 'website.topFeatures', 'website.testimonials', 'website.partners']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Homepage') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manage_gallery')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('website.gallery') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['website.gallery', 'website.gallery.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Gallery') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manage_pages')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('website.pages') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['website.pages', 'custom-pages.create', 'custom-pages.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Pages') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manager_footer')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('website.footer') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">{{ localize('Footer') }}</span>
                                    </a>
                                </li>
                            @endcan


                            <li class="yest-side-nav-item d-none">
                                <a href="{{ route('website.appearance') }}" class="yest-side-nav-link">
                                    <span class="yest-side-nav-text">{{ localize('SEO') }}</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                @endcan

                <!-- Setup & Configurations -->
                @canany(['manage_general_settings', 'manage_language_settings', 'manage_currency_settings',
                    'manage_smtp_settings'])
                    <li class="yest-side-nav-item">
                        <a href="#" class="yest-side-nav-link">
                            <i class="las la-cog"></i>
                            <span class="yest-side-nav-text">{{ localize('Manage System') }}</span>
                            <span class="yest-side-nav-arrow"></span>
                        </a>
                        <ul class="yest-side-nav-list level-2">
                            @can('manage_general_settings')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('general_setting.index') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">{{ localize('General Settings') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manage_language_settings')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('languages.index') }}"
                                        class="yest-side-nav-link {{ areActiveRoutes(['languages.index', 'languages.create', 'languages.store', 'languages.show', 'languages.edit']) }}">
                                        <span class="yest-side-nav-text">{{ localize('Languages') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manage_currency_settings')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('currency.index') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">{{ localize('Currency') }}</span>
                                    </a>
                                </li>
                            @endcan

                            @can('manage_smtp_settings')
                                <li class="yest-side-nav-item">
                                    <a href="{{ route('smtp_settings.index') }}" class="yest-side-nav-link">
                                        <span class="yest-side-nav-text">{{ localize('SMTP Settings') }}</span>
                                    </a>
                                </li>
                            @endcan

                        </ul>
                    </li>
                @endcan

            </ul><!-- .yest-side-nav -->
        </div><!-- .yest-side-nav-wrap -->
    </div><!-- .yest-sidebar -->
    <div class="yest-sidebar-overlay"></div>
</div><!-- .yest-sidebar -->
