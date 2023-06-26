@extends('backend.layouts.blank')
@section('content')
    <div class="h-100 d-flex flex-column justify-content-center bg-light">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="mar-ver pad-btm text-center">
                            <h1 class="h3">Import SQL</h1>
                        </div>
                        <p class="text-muted font-13 text-center">
                            <strong>Your database is successfully connected</strong>.
                            Click on Import SQL
                        </p>
                        <div class="text-center mar-top pad-top">
                            <a href="{{ route('import_sql', 'install') }}" class="btn btn-primary"
                                onclick="showLoder()">Import
                                SQL</a>
                        </div>

                        <div class="text-center mt-3">Or</div>
                        <div class="text-center mar-top pad-top mt-3">
                            <a href="{{ route('import_sql', 'demo') }}" class="btn btn-warning" onclick="showLoder()">Import
                                Demo
                                SQL</a>
                        </div>

                        <div id="loader" class="text-center mt-3" style="margin-top: 20px; display: none;">
                            &nbsp; Please wait, importing database ...
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script type="text/javascript">
        "use strict";

        function showLoder() {
            $('#loader').fadeIn();
        }
    </script>
@endsection
