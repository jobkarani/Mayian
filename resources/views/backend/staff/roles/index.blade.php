@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="card">
                <div class="card-header row gutters-5">
                    <div class="col text-left">
                        <h5 class="mb-md-0 h6">{{ localize('Role List') }}</h5>
                    </div>
                    <div class="col text-right">
                        @can('add_roles')
                            <a href="{{ route('roles.create') }}" class="btn btn-primary">
                                <span>{{ localize('Add New Role') }}</span>
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
                                <th class="text-right">{{ localize('Options') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($roles as $key => $role)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>
                                        <span class="badge badge-warning">
                                            {{ $role->name }}
                                        </span>
                                    </td>
                                    <td class="text-right">
                                        @if ($role->id != 1)
                                            @can('edit_roles')
                                                <a href="{{ route('roles.edit', encrypt($role->id)) }}"
                                                    class="btn btn-primary btn-icon btn-sm">
                                                    <i class="las la-edit"></i>
                                                </a>
                                            @endcan
                                            @if (
                                                $role->id != 1 &&
                                                    auth()->user()->can('delete_roles'))
                                                <a href="javascript:void(0);"
                                                    data-href="{{ route('roles.destroy', $role->id) }}"
                                                    class="btn btn-danger btn-icon btn-sm confirm-delete">
                                                    <i class="las la-trash"></i>
                                                </a>
                                            @endif
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    @include('backend.inc.delete_modal')
@endsection
