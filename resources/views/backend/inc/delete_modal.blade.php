<div id="delete-modal" class="modal fade">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title h6">{{ localize('Are you sure?') }}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body text-center">
                <div class="fs-14 mb-1">{{ localize('All data related to this may get deleted.') }}</div>
                <p class="fs-18 fw-600 mb-0">{{ localize('Still want to delete!') }}</p>
                <div class="d-flex align-items-center justify-content-center mt-4 pb-4">
                    <div>
                        <a href="" id="delete-link" class="btn btn-danger">{{ localize('Yes, Delete') }}
                        </a>
                    </div>
                    <button type="button" data-dismiss="modal" class="btn btn-outline-secondary ml-2"> Cancel</button>
                </div>
            </div>

        </div>
    </div>
</div>
