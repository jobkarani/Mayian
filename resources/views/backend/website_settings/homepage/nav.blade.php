<div class="d-flex flex-wrap mb-3">
    <a href="{{ route('website.homepage') }}" class="btn mb-2 mr-2 {{ areActiveRoutesBtnCls(['website.homepage']) }}">
        {{ localize('Hero Section') }}
    </a>
    <a href="{{ route('website.topFeatures') }}"
        class="btn mb-2 mr-2  {{ areActiveRoutesBtnCls(['website.topFeatures']) }}">
        {{ localize('Top Features') }}
    </a>
    <a href="{{ route('website.testimonials') }}"
        class="btn mb-2 mr-2  {{ areActiveRoutesBtnCls(['website.testimonials']) }}">
        {{ localize('Testimonials') }}
    </a>
    <a href="{{ route('website.partners') }}" class="btn mb-2 mr-2  {{ areActiveRoutesBtnCls(['website.partners']) }}">
        {{ localize('Partners') }}
    </a>
</div>
