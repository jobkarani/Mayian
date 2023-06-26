<div class="modal fade" id="yesMediaUploaderModal" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-adaptive" role="document">
        <div class="modal-content h-100">
            <div class="modal-header">
                <h6 class="uppy-modal-nav"> {{ localize('Upload or choose files') }}
                </h6>
                <div class="d-flex align-items-center">
                    <div class="yest-uploader-selected mx-3">{{ localize('0 File selected') }}</div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <div id="yest-upload-new">
                    <div id="upload-media-files" class="h-100">
                    </div>
                </div>

                <div class="mt-3" id="yest-select-file">
                    <div class="yest-uploader-search d-flex justify-content-between align-items-center mt-3 mb-1">
                        <h6>{{ localize('Uploaded Files') }}</h6>
                        <span>
                            <input type="text" class="form-control" name="yest-uploader-search"
                                placeholder="{{ localize('Search by name') }}">
                        </span>
                    </div>

                    <div class="media-file-uploader-wrapper clearfix c-scrollbar-light">
                        <div class="align-items-center d-flex justify-content-center w-100">
                            <div class="text-center">
                                <h3>{{ localize('No files found') }}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-sm btn-warning d-none"
                            id="load-more">{{ localize('Load More') }}</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-end">
                <div class="d-flex align-items-center">
                    <button type="button" class="btn btn-sm btn-primary px-4"
                        data-toggle="yesMediaUploaderAddSelected">{{ localize('Select') }}</button>
                </div>
            </div>
        </div>
    </div>
</div>
