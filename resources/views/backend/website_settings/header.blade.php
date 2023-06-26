@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <form action="{{ route('settings.update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="card">
                    <div class="card-header">
                        <h6 class="mb-0">{{ localize('Header Setting') }}</h6>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('Helpline number') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_helpline_number">
                                    <input type="text" class="form-control" placeholder="+01 112 352 566"
                                        name="topbar_helpline_number" value="{{ getSetting('topbar_helpline_number') }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('Email') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_email">
                                    <input type="text" class="form-control" placeholder="yesort@example.com"
                                        name="topbar_email" value="{{ getSetting('topbar_email') }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('Facebook Link') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_facebook_link">
                                    <input type="text" class="form-control" placeholder="" name="topbar_facebook_link"
                                        value="{{ getSetting('topbar_facebook_link') }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('Twitter Link') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_twitter_link">
                                    <input type="text" class="form-control" placeholder="" name="topbar_twitter_link"
                                        value="{{ getSetting('topbar_twitter_link') }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('Instagram Link') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_instagram_link">
                                    <input type="text" class="form-control" placeholder="" name="topbar_instagram_link"
                                        value="{{ getSetting('topbar_instagram_link') }}">
                                </div>

                            </div>

                            <div class="form-group row">
                                <label class="col-md-12 col-from-label">{{ localize('LinkedIn Link') }}</label>
                                <div class="col-md-12">
                                    <input type="hidden" name="types[]" value="topbar_linked_in_link">
                                    <input type="text" class="form-control" placeholder="" name="topbar_linked_in_link"
                                        value="{{ getSetting('topbar_linked_in_link') }}">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label" for="header_logo">{{ localize('Header Logo') }}
                                <small>(200x60)</small></label>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">
                                                {{ localize('Browse') }}</div>
                                        </div>
                                        <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                        <input type="hidden" name="types[]" value="header_logo">
                                        <input type="hidden" name="header_logo" class="chosen-files"
                                            value="{{ getSetting('header_logo') }}">
                                    </div>
                                    <div class="view-file box sm">
                                    </div>
                                    <div class="view-file box sm"></div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-12 col-form-label"
                                for="header_logo_dark">{{ localize('Header Logo Dark') }}
                                <small>(200x60)</small></label>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group" data-toggle="yesMediaUploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">
                                                {{ localize('Browse') }}</div>
                                        </div>
                                        <div class="form-control file-amount">{{ localize('Choose File') }}</div>
                                        <input type="hidden" name="types[]" value="header_logo_dark">
                                        <input type="hidden" name="header_logo_dark" class="chosen-files"
                                            value="{{ getSetting('header_logo_dark') }}">
                                    </div>
                                    <div class="view-file box sm">
                                    </div>
                                    <div class="view-file box sm"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <button type="submit" class="btn btn-primary">{{ localize('Update') }}</button>
                </div>
            </form>
        </div>
    </div>
@endsection
