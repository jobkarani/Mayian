<form action="{{ route('your_currency.update') }}" method="POST">
    @csrf
    <input type="hidden" name="id" value="{{ $currency->id }}">
    <div class="modal-header">
        <h5 class="modal-title h6">{{ localize('Update Currency') }}</h5>
        <button type="button" class="close" data-dismiss="modal">
        </button>
    </div>
    <div class="modal-body">
        <div class="form-group row align-items-center">
            <label class="col-sm-2 col-from-label" for="name">{{ localize('Name') }}</label>
            <div class="col-sm-10">
                <input type="text" placeholder="{{ localize('Name') }}" id="name" name="name"
                    value="{{ $currency->name }}" class="form-control" required>
            </div>
        </div>


        <div class="form-group row align-items-center">
            <label class="col-sm-2 col-from-label" for="exchange_rate">{{ localize('Rate') }}</label>
            <div class="col-sm-10">
                <input type="number" step="0.00001" min="0" placeholder="{{ localize('Exchange Rate') }}"
                    id="exchange_rate" name="exchange_rate" value="{{ $currency->exchange_rate }}" class="form-control"
                    required>
            </div>
        </div>
        <div class="form-group row align-items-center">
            <label class="col-sm-2 col-from-label" for="code">{{ localize('Code') }}</label>
            <div class="col-sm-10">
                <input type="text" placeholder="{{ localize('Code') }}" id="code" name="code"
                    value="{{ $currency->code }}" class="form-control" required
                    {{ $currency->code == 'USD' ? 'disabled' : '' }}>
            </div>
        </div>

        <div class="form-group row align-items-center">
            <label class="col-sm-2 col-from-label" for="symbol">{{ localize('Symbol') }}</label>
            <div class="col-sm-10">
                <input type="text" placeholder="{{ localize('Symbol') }}" id="symbol" name="symbol"
                    value="{{ $currency->symbol }}" class="form-control" required>
            </div>
        </div>


        <div class="form-group row align-items-center">
            <label class="col-sm-2 col-from-label" for="alignment">{{ localize('Alignment') }}</label>
            <div class="col-sm-10">
                <select class="form-control yest-selectpicker" name="alignment"
                    data-selected="{{ $currency->alignment }}">
                    <option value="0">[Symbol][Amount]</option>
                    <option value="1">[Amount][Symbol]</option>
                </select>
            </div>
        </div>

    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-sm btn-primary">{{ localize('Save') }}</button>
        <button type="button" class="btn btn-sm btn-light" data-dismiss="modal">{{ localize('Cancel') }}</button>
    </div>
</form>
