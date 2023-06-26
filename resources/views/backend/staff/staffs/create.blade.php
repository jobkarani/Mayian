@extends('backend.layouts.app')

@section('content')
    <div class="col-lg-10 mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{ localize('Staff Information') }}</h5>
            </div>

            <form class="form-horizontal" action="{{ route('staffs.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="name">{{ localize('Name') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="name" placeholder="{{ localize('Name') }}" id="name"
                                class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="email">{{ localize('Email') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="email" placeholder="{{ localize('Email') }}" id="email"
                                class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="mobile">{{ localize('Phone') }}</label>
                        <div class="col-sm-12">
                            <input type="text" name="mobile" placeholder="{{ localize('Phone') }}" id="mobile"
                                class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="role_id">{{ localize('Role') }}</label>
                        <div class="col-sm-12">
                            <select name="role_id" id="role_id" required class="form-control yest-selectpicker">
                                @foreach ($roles as $role)
                                    <option value="{{ $role->id }}">{{ $role->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="password">{{ localize('Password') }}</label>
                        <div class="col-sm-12">
                            <input type="password" name="password" splaceholder="{{ localize('Password') }}" id="password"
                                class="form-control" required>
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
