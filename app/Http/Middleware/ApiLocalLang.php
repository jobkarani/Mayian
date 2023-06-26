<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ApiLocalLang
{ 
    public function handle(Request $request, Closure $next)
    {
        if($request->hasHeader('Accept-Language')){
            $locale = $request->header('Accept-Language');
        }
        elseif(env('DEFAULT_LANGUAGE') != null){
            
            $locale = env('DEFAULT_LANGUAGE');
        }
        else{
            $locale = 'en';
        }

        # laravel localization
        app()->setLocale($locale); 

        return $next($request);
    }
}
