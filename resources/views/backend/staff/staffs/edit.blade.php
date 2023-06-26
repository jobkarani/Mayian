@extends('backend.layouts.app')

@section('content')
    <div class="col-lg-10 mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{ localize('Staff Information') }}</h5>
            </div>

            <form action="{{ route('staffs.update', $user->id) }}" method="POST">
                <input name="_method" type="hidden" value="PATCH">
                @csrf
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="name">{{ localize('Name') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="name" value="{{ $user->name }}"
                                placeholder="{{ localize('Name') }}" id="name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="email">{{ localize('Email') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="email" value="{{ $user->email }}"
                                placeholder="{{ localize('Email') }}" id="email" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="mobile">{{ localize('Phone') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="mobile" value="{{ $user->phone }}"
                                placeholder="{{ localize('Phone') }}" id="mobile" class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="role_id">{{ localize('Role') }}</label>
                        <div class="col-sm-12">
                            <select name="role_id" id="role_id" required class="form-control yest-selectpicker"
                                data-selected="{{ $user->role_id }}">
                                @foreach ($roles as $role)
                                    <option value="{{ $role->id }}">{{ $role->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="password">{{ localize('Password') }}</label>
                        <div class="col-sm-12">
                            <input type="password" name="password" placeholder="{{ localize('Password') }}" id="password"
                                class="form-control">
                        </div>
                    </div>
                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">{{ localize('Save') }}</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
