@extends('backend.layouts.app')

@section('content')
    <div class="col-md-10 mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{ localize('Send Emails') }}</h5>
            </div>

            <div class="card-body">
                <form class="form-horizontal" action="{{ route('newsletter.send') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="subject">{{ localize('Subject') }}</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="subject" id="subject"
                                placeholder="{{ localize('Email Subject here') }}" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="name">{{ localize('Select subscribers') }}</label>
                        <div class="col-sm-12">
                            <select class="form-control yest-selectpicker"
                                data-placeholder="{{ localize('Select subscribers') }}" name="subscriber_emails[]" multiple
                                required>
                                @foreach ($subscribers as $subscriber)
                                    <option value="{{ $subscriber->email }}">{{ $subscriber->email }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-12 col-from-label" for="name">{{ localize('Content') }}</label>
                        <div class="col-sm-12">
                            <textarea rows="6" class="form-control yest-text-editor" name="content"></textarea>
                        </div>
                    </div>


                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">{{ localize('Send') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
