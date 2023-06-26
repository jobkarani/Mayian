<script type="text/javascript">
    "use strict";

    // open close full screen
    var elem = document.documentElement;

    function toggleFullscreen() {
        if (elem.requestFullscreen) {
            elem.requestFullscreen();
        } else if (elem.webkitRequestFullscreen) {
            /* Safari */
            elem.webkitRequestFullscreen();
        } else if (elem.msRequestFullscreen) {
            /* IE11 */
            elem.msRequestFullscreen();
        }

        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.webkitExitFullscreen) {
            /* Safari */
            document.webkitExitFullscreen();
        } else if (document.msExitFullscreen) {
            /* IE11 */
            document.msExitFullscreen();
        }
    }

    // change language
    if ($('#lang-change').length > 0) {
        $('#lang-change .dropdown-menu a').each(function() {
            $(this).on('click', function(e) {
                e.preventDefault();
                var $this = $(this);
                var locale = $this.data('flag');
                $.post('{{ route('language.change') }}', {
                    _token: '{{ csrf_token() }}',
                    locale: locale
                }, function(data) {
                    location.reload();
                });

            });
        });
    }

    // change language
    if ($('#currency-change').length > 0) {
        $('#currency-change .dropdown-menu a').each(function() {
            $(this).on('click', function(e) {
                e.preventDefault();
                var $this = $(this);
                var code = $this.data('code');
                $.post('{{ route('currency.change') }}', {
                    _token: '{{ csrf_token() }}',
                    code: code
                }, function(data) {
                    location.reload();
                });

            });
        });
    }

    // localize data
    function localizeData(langKey) {
        window.location = '{{ url()->current() }}?lang=' + langKey;
    } 

    @foreach (session('flash_notification', collect())->toArray() as $message)
        YEST.libraries.notify('{{ $message['level'] }}', '{{ $message['message'] }}');
    @endforeach
</script>