<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CustomerComplain;
use App\Models\CustomerComplainImage;
use Illuminate\Support\Facades\Validator;
use SimpleSoftwareIO\QrCode\Facade as QrCode;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;


class CustomerComplainController extends Controller
{
    public function addcomplain ()
    {
//        $directory = './admin/customer_complain/xx.png';
//        return $img    = QrCode::size(300)->generate('skdhfsldf', public_path($directory));
        return view('admin.complain.addComplain');
    }

    public function manageComplain ()
    {
        $complains  = CustomerComplain::orderBy('id', 'DESC')->where('status', 0)->get();
        $solvedComplains  = CustomerComplain::orderBy('id', 'DESC')->where('status', 1)->get();
//        $images     = CustomerComplainImage::all();

        return view('admin.complain.manageComplain', [
            'complains' => $complains,
            'solvedComplains'    => $solvedComplains,
        ]);
    }
    public function statuscomplain ($id)
    {
        $complain   = CustomerComplain::find($id);
        if ($complain->status === 0)
        {
            $complain->status   = 1;
            $complain->save();
        } elseif ($complain->status === 1)
        {
            $complain->status   = 0;
            $complain->save();
        }

        return redirect()->back()->with('message', 'Complain Solved');
    }
    public static function uploadComplainMultipleImage($request, $complainId)
    {
        $images = $request->file('image');
        if (isset($images))
        {
            foreach ($images as $image) {
                $imageName = time().'_'.$image->getClientOriginalName();
                $directory = './admin/customer_complain_images/';
                $imageUrl   =   $directory.$imageName;
//            $save   = $image->move($directory, $imageName);
                Image::make($image)->resize(390,340)->save($imageUrl);
                $complain = new CustomerComplainImage();
                $complain->complain_id = $complainId;
                $complain->image  = $imageUrl;
                $complain->save();
            }
        }

    }

    protected function complainData ($request)
    {
        $complain   = new CustomerComplain();

        $complain->name             = $request->name;
        $complain->email             = $request->email;
        $complain->mobile             = $request->mobile;
        $complain->code             = $request->code;
        $complain->description             = $request->description;
        $complain->status       = 0;
        $complain->save();

        $complainId   = $complain->id;
        return $complainId;
    }

    protected function complainValidation ($request)
    {
        return $this->validate($request, [
            'name' => 'required',
            'mobile' => 'required',
            'code' => 'required',
            'description' => 'required',
            'email' => 'email',
        ]);
    }

    public function newComplain (Request $request)
    {
        $this->complainValidation($request);
        $complainId    = $this->complainData($request);
        $this->uploadComplainMultipleImage($request, $complainId);

        return redirect()->back()->with('message', 'complain added successfully');
    }

    public function deleteComplain ($id)
    {
        $complain    = CustomerComplain::find($id);
        $complain->delete();

        $images     = CustomerComplainImage::where('complain_id', $id)->get();
        if (isset($images))
        {
            foreach ($images as $image)
            {
                if (fileExists($image->image))
                {
                    unlink($image->image);
                }
            }
        }

        return redirect()->back()->with('message', 'Complain info deleted successfully.');
    }
}
