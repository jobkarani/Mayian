@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header row gutters-5">
                    <div class="col text-left">
                        <h5 class="mb-md-0 h6">{{ localize('Staff List') }}</h5>
                    </div>
                    <div class="col text-right">
                        @can('add_staffs')
                            <a href="{{ route('staffs.create') }}" class="btn btn-primary">
                                <span>{{ localize('Add New Staff') }}</span>
                            </a>
                        @endcan
                    </div>
                </div>
                <div class="card-body">
                    <table class="table yest-table mb-0">
                        <thead>
                            <tr>
                                <th width="10%">{{ localize('S/L') }}</th>
                                <th>{{ localize('Name') }}</th>
                                <th>{{ localize('Role') }}</th>
                                <th class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $key => $user)
                                <tr>
                                    <td class="v-align-middle">
                                        {{ $key + 1 + ($users->currentPage() - 1) * $users->perPage() }}</td>
                                    <td class="v-align-middle fw-500">
                                        <div>{{ $user->name }}</div>
                                        <div>{{ $user->email }}</div>
                                        <div>{{ $user->phone }}</div>
                                    </td>
                                    <td class="v-align-middle">
                                        @if ($user->role != null)
                                            <span class="badge badge-warning">{{ $user->role->name }}</span>
                                        @endif
                                    </td>
                                    <td class="text-right v-align-middle">
                                        @can('edit_staffs')
                                            <a class="btn btn-primary btn-icon btn-sm"
                                                href="{{ route('staffs.edit', encrypt($user->id)) }}">
                                                <i class="las la-edit"></i>
                                            </a>
                                        @endcan
                                        @can('delete_staffs')
                                            <a href="#" class="btn btn-danger btn-icon btn-sm confirm-delete"
                                                data-href="{{ route('staffs.destroy', $user->id) }}">
                                                <i class="las la-trash"></i>
                                            </a>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="yest-pagination">
                        {{ $users->appends(request()->input())->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
