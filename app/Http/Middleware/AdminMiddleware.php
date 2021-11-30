<?php

namespace App\Http\Middleware;

use Closure;

class AdminMiddleware
{

    public function handle($request, Closure $next)
    {
//        return $next($request);
        if (auth()->user()->is_admin == 1)
        {
            return $next($request);
        }

        return redirect('home')->with('error', 'You do not have admin access');
    }
}
