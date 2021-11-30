<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Layout;
use Illuminate\Http\Request;

class FrontLayoutController extends Controller
{

    public function mng ()
    {
        return view('admin.frontLayout.mng');
    }
    
}
