@extends('backend.layouts.app')

@section('content')
    <div class="row">
        @can('add_blog_categories')
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ localize('Add New Blog Category') }}</h5>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal" method="POST" action="{{ route('blog-category.store') }}">
                            @csrf
                            <div class="form-group mb-3">
                                <label for="name">{{ localize('Name') }}</label>
                                <input type="text" placeholder="{{ localize('Name') }}" name="name" class="form-control"
                                    required>
                            </div>

                            <div class="form-group mb-0 text-right">
                                <button type="submit" class="btn btn-primary">
                                    {{ localize('Save') }}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        @endcan
        <div class="@if (auth()->user()->can('add_blog_category')) col-lg-7 @else col-lg-12 @endif">
            <div class="card">
                <div class="card-header d-block d-md-flex">
                    <h5 class="mb-0 h6">{{ localize('Blog Categories') }}</h5>
                    <form class="" id="sort_categories" action="" method="GET">
                        <div class="input-group d-flex">
                            <input type="text" class="form-control form-control-sm" id="search" name="search"
                                @isset($sort_search) value="{{ $sort_search }}" @endisset
                                placeholder="{{ localize('Search by name') }}">
                            <button type="submit" class="btn btn-primary btn-sm ml-1"><i class="la la-search"></i></button>
                        </div>
                    </form>
                </div>
                <div class="card-body">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th width="5%">{{ localize('S/L') }}</th>
                                <th>{{ localize('Name') }}</th>
                                <th width="20%" class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $key => $category)
                                <tr>
                                    <td>{{ $key + 1 + ($categories->currentPage() - 1) * $categories->perPage() }}</td>
                                    <td>{{ $category->getTranslation('name') }}</td>
                                    <td class="text-right">
                                        @can('edit_blog_categories')
                                            <a class="btn btn-primary btn-icon btn-sm"
                                                href="{{ route('blog-category.edit', ['id' => $category->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}">
                                                <i class="las la-edit"></i>
                                            </a>
                                        @endcan
                                        @can('delete_blog_categories')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm confirm-delete"
                                                data-href="{{ route('blog-category.destroy', $category->id) }}"
                                                title="{{ localize('Delete') }}">
                                                <i class="las la-trash"></i>
                                            </a>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="yest-pagination">
                        {{ $categories->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
