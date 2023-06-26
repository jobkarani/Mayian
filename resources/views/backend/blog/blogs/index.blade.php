@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" id="sort_blogs" action="" method="GET">
            <div class="card-header row gutters-5">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ localize('All blog posts') }}</h5>
                </div>

                <div class="col-md-4 ml-auto">
                    <div class="input-group d-flex">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ localize('Search by title') }}">
                        <button type="submit" class="btn btn-primary btn-sm ml-1"><i class="la la-search"></i></button>
                    </div>
                </div>
            </div>
        </form>
        <div class="card-body">
            <table class="table mb-0 yest-table">
                <thead>
                    <tr>
                        <th>{{ localize('S/L') }}</th>
                        <th>{{ localize('Image') }}</th>
                        <th>{{ localize('Title') }}</th>
                        <th>{{ localize('Category') }}</th>
                        <th>{{ localize('Status') }}</th>
                        <th class="text-right" width="10%">{{ localize('Options') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($blogs as $key => $blog)
                        <tr>
                            <td class="v-align-middle">
                                {{ $key + 1 + ($blogs->currentPage() - 1) * $blogs->perPage() }}
                            </td>

                            <td class="v-align-middle">
                                <div class="d-flex align-items-center">
                                    <img src="{{ uploadedAsset($blog->thumbnail_image) }}" alt="Image"
                                        class="size-40px mr-2 rounded-circle"
                                        onerror="this.onerror=null;this.src='{{ staticAsset('/assets/img/placeholder.jpg') }}';" />

                                </div>
                            </td>

                            <td class="v-align-middle">
                                {{ $blog->getTranslation('title') }}
                            </td>

                            <td class="v-align-middle">
                                @if ($blog->category != null)
                                    {{ $blog->category->getTranslation('name') }}
                                @else
                                    --
                                @endif
                            </td>

                            <td class="v-align-middle">
                                <label class="yest-switch yest-switch-success mb-0">
                                    <input type="checkbox" onchange="change_status(this)" value="{{ $blog->id }}"
                                        <?php if ($blog->status == 1) {
                                            echo 'checked';
                                        } ?>>
                                    <span></span>
                                </label>
                            </td>
                            <td class="text-right v-align-middle">
                                @can('edit_blogs')
                                    <a class="btn btn-primary btn-icon btn-sm"
                                        href="{{ route('blogs.edit', ['id' => $blog->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endcan
                                @can('delete_blogs')
                                    <a href="#" class="btn btn-danger btn-icon btn-sm confirm-delete"
                                        data-href="{{ route('blogs.destroy', $blog->id) }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="yest-pagination">
                {{ $blogs->links() }}
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection


@section('script')
    <script type="text/javascript">
        "use strict";

        function change_status(el) {
            var status = 0;
            if (el.checked) {
                var status = 1;
            }
            $.post('{{ route('blogs.change-status') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            }, function(data) {
                if (data == 1) {
                    YEST.libraries.notify('success', '{{ localize('Status updated successfully') }}');
                } else {
                    YEST.libraries.notify('danger', '{{ localize('Something went wrong') }}');
                }
            });
        }
    </script>
@endsection
