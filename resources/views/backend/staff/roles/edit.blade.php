@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 mx-auto">
            <form class="form-horizontal" action="{{ route('roles.update', $role->id) }}" method="POST"
                enctype="multipart/form-data">
                @csrf
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-md-0 h6">{{ localize('Update Role') }}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label">{{ localize('Role Name') }}<span
                                    class="text-danger">*</span></label>
                            <div class="col-md-12">
                                <input type="text" placeholder="{{ localize('Name') }}" value="{{ $role->name }}"
                                    id="name" name="name" class="form-control" required>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-md-0 h6">{{ localize('Permissions') }}</h5>
                    </div>

                    <div class="card-body">
                        @php
                            $permission_groups = \App\Models\Permission::all()->groupBy('parent');
                        @endphp
                        @foreach ($permission_groups as $key => $permission_group)
                            @php
                                $check = true;
                            @endphp
                            @if ($check)
                                <div>
                                    <ul class="list-group">
                                        <li class="list-group-item  border-bottom-0 fw-600" aria-current="true">
                                            {{ localize(ucwords(str_replace('_', ' ', $permission_group[0]['parent']))) }}
                                        </li>
                                        <li class="list-group-item">
                                            <div class="row">
                                                @foreach ($permission_group as $key => $permission)
                                                    <div class="col-md-4 col-sm-6">
                                                        <div class="card card-body p-2 mt-1 mb-2 bg-light">
                                                            <div
                                                                class="d-flex justify-content-between align-items-center v-align-middle">

                                                                <label
                                                                    class="mb-0">{{ localize(ucwords(str_replace('_', ' ', $permission->name))) }}</label>
                                                                <label class="yest-switch yest-switch-success mb-0">
                                                                    <input type="checkbox" name="permissions[]"
                                                                        class="form-control demo-sw"
                                                                        value="{{ $permission->id }}"
                                                                        @if ($role->hasPermissionTo($permission->name)) checked @endif>
                                                                    <span class="slider round"></span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            @endif
                            <br>
                        @endforeach
                    </div>

                </div>

                <div class="form-group mb-3 mt-3 text-right">
                    <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                </div>
            </form>
        </div>
    </div>
@endsection
