<?php

namespace App\Http\Middleware;

use Closure;

class Executive
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
//        return $next($request);
        if (auth()->user()->is_executive == 1)
        {
            return $next($request);
        }

        return redirect('home')->with('error', 'You do not have admin access');
    }
}
