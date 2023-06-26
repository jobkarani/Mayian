@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <div class="card-header">
            <h6 class="mb-0 fw-600">{{ localize('All Pages') }}</h6>
            <a href="{{ route('custom-pages.create') }}" class="btn btn-primary">{{ localize('Add New Page') }}</a>
        </div>
        <div class="card-body">
            <table class="table yest-table mb-0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ localize('Name') }}</th>
                        <th data-breakpoints="md">{{ localize('URL') }}</th>
                        <th class="text-right">{{ localize('Actions') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach (\App\Models\Page::all() as $key => $page)
                        <tr>
                            <td>{{ $key + 1 }}</td>
                            <td>{{ $page->getTranslation('title') }}</td>
                            <td>
                                @if ($page->type == 'home_page')
                                    {{ route('home') }}
                                @else
                                    <a href="{{ route('home') }}/links/{{ $page->slug }}" target="_blank"
                                        rel="noopener noreferrer">{{ route('home') }}/links/{{ $page->slug }}</a>
                                @endif
                            </td>
                            <td class="text-right">
                                @if ($page->type == 'home_page')
                                    <a href="{{ route('custom-pages.edit', ['id' => $page->slug, 'lang' => env('DEFAULT_LANGUAGE'), 'page' => 'home']) }}"
                                        class="btn btn-icon btn-sm btn-primary" title="Edit">
                                        <i class="las la-edit"></i>
                                    </a>
                                @else
                                    <a href="{{ route('custom-pages.edit', ['id' => $page->slug, 'lang' => env('DEFAULT_LANGUAGE')]) }}"
                                        class="btn btn-icon btn-sm btn-primary" title="Edit">
                                        <i class="las la-edit"></i>
                                    </a>
                                @endif
                                @if ($page->type == 'custom_page')
                                    <a href="#" class="btn btn-danger btn-icon btn-sm confirm-delete"
                                        data-href="{{ route('custom-pages.destroy', $page->id) }} ">
                                        <i class="las la-trash"></i>
                                    </a>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
