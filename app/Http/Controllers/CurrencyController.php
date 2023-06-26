<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Currency;

class CurrencyController extends Controller
{

    # constructor
    public function __construct()
    {
        $this->middleware(['permission:manage_currency_settings'])->only('index');
    }

    # change currency
    public function changeCurrency(Request $request)
    {
        $currency = Currency::where('code', $request->code)->first();
        $request->session()->put('currency_code', $request->code);
        $request->session()->put('local_currency_rate', $currency->exchange_rate);
        $request->session()->put('currency_symbol', $currency->symbol);
        $request->session()->put('currency_symbol_alignment', $currency->alignment);
    }

    # currency list
    public function index(Request $request)
    {
        $sort_search = null;
        $currencies = Currency::query();
        if ($request->has('search')) {
            $sort_search = $request->search;
            $currencies = $currencies->where('name', 'like', '%' . $sort_search . '%');
        }
        $currencies = $currencies->paginate(10);

        $active_currencies = Currency::all();
        return view('backend.settings.currencies.index', compact('currencies', 'active_currencies', 'sort_search'));
    }

    # currency create
    public function create()
    {
        return view('backend.settings.currencies.create');
    }

    # currency save
    public function store(Request $request)
    {
        $currency = new Currency;
        $currency->name = $request->name;
        $currency->symbol = $request->symbol;
        $currency->alignment = $request->alignment;
        $currency->code = $request->code;
        $currency->status = 1;
        $currency->exchange_rate = $request->exchange_rate;
        if ($currency->save()) {
            flash(localize('Currency saved successfully'))->success();
            return redirect()->route('currency.index');
        } else {
            flash(localize('Something went wrong'))->error();
            return redirect()->route('currency.index');
        }
    }

    # currency edit
    public function edit(Request $request)
    {
        $currency = Currency::findOrFail($request->id);
        return view('backend.settings.currencies.edit', compact('currency'));
    }

    # currency update 
    public function updateYourCurrency(Request $request)
    {
        $currency = Currency::findOrFail($request->id);
        $currency->name = $request->name;
        $currency->symbol = $request->symbol;
        $currency->alignment = $request->alignment;
        if ($currency->code != "USD") {
            $currency->code = $request->code;
        }
        $currency->exchange_rate = $request->exchange_rate;
        if ($currency->save()) {
            flash(localize('Currency updated successfully'))->success();
            return redirect()->route('currency.index');
        } else {
            flash(localize('Something went wrong'))->error();
            return redirect()->route('currency.index');
        }
    }

    # update status
    public function update_status(Request $request)
    {
        $currency = Currency::findOrFail($request->id);
        $currency->status = $request->status;
        if ($currency->save()) {
            return 1;
        }
        return 0;
    }
}
