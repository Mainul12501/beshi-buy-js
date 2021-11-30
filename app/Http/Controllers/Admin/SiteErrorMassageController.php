<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\SiteErrorMassage;
use Illuminate\Http\Request;

class SiteErrorMassageController extends Controller
{
    public function addMsg ()
    {
        return view('admin.siteErrorMessage.addMsg');
    }

    public function newMsg (Request $request)
    {
        $error  = new SiteErrorMassage();

        $error->pending_msg = $request->pending_msg;
        $error->status      = $request->status;
        $error->save();

        return redirect()->back()->with('message', 'Message saved successfully');
    }

    public function manageMsg ()
    {
        $errorMsgs  = SiteErrorMassage::all();

        return view('admin.siteErrorMessage.manageMsg', [
            'errorMsgs' => $errorMsgs,
        ]);
    }

    public function deleteMsg ($id)
    {
        $error = SiteErrorMassage::find($id);
        $error->delete();
        return redirect()->back()->with('message', 'Message deleted successfully');
    }

    public function statusMsg ($id)
    {
        $error = SiteErrorMassage::find($id);
        if ($error->status == 1)
        {
            $error->status  = 0;
            $error->save();
        } elseif ($error->status == 0)
        {
            $error->status  = 1;
            $error->save();
        }
        return redirect()->back()->with('message', 'Message status change successfully');
    }
}
