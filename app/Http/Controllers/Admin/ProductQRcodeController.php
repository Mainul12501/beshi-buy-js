<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Color;
use App\Models\GenerateQrCode;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Size;
use App\Models\SubCategory;
use App\Models\Supplier;
use App\Models\ProductQRcode;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use SimpleSoftwareIO\QrCode\Facade as QrCode;


class ProductQRcodeController extends Controller
{
    public function addCode ()
    {
        $categories = Category::where('status', 1)->get();
        $suppliers   = Supplier::where('status', 1)->get();
        return view('admin.qrCode.addCode', [
            'categories' => $categories,
            'suppliers'     => $suppliers,
        ]);
    }

    public function getColorSize ($id)
    {
        $productColors  = ProductColor::where('product_id', $id)->get();

        foreach ($productColors as $productColor)
        {
            $colors[] = Color::where('id', $productColor->color_id)->select('id','name')->first();
        }
        $productSizes   = ProductSize::where('product_id', $id)->get();
        foreach ($productSizes as $productSize)
        {
            $sizes[]  = Size::where('id', $productSize->size_id)->select('id','name')->first();
        }

        $result = [
            'colors'    => $colors,
            'sizes'     => $sizes,
        ];

        return json_encode($result);
    }
    public function newCode (Request $request)
    {
        $codes  =  $request->codes;
        foreach ($codes as $code)
        {
            $productQRcode = new ProductQRcode();
            $productQRcode->category_id     = $request->category_id;
            $productQRcode->sub_category_id     = $request->sub_category_id;
            $productQRcode->product_id     = $request->product_id;
            $productQRcode->color_name     = $request->color_name; 
            $productQRcode->size_name     = $request->size_name; 
            $productQRcode->code     = $code;
            $productQRcode->supplier_id     = $request->supplier_id;
            $productQRcode->save();
        }

        return redirect()->back()->with('message', 'code successfully added to product');

    }

    public function manageCode ()
    {
        $productQrCodes = ProductQRcode::orderBy('id', 'DESC')->get();

        return view('admin.qrCode.manageCode', [
            'productQrCodes'    => $productQrCodes,
        ]);
    }

    public function getDataPrint (Request $request)
    {
        $start  = GenerateQrCode::find($request->start_form);
        $end    = GenerateQrCode::find($request->end);

        if (isset($start) && isset($end))
        {
            $codexs = GenerateQrCode::whereBetween('id',[$request->start_form, $request->end])->get();
            $save   = GenerateQrCode::orderBy('id','DESC')->first();
            $save->start    = $request->start_form;
            $save->end      = $request->end;
            $save->save();
        }
//        else {
//            $codexs = "Sorry.Couldn't find Either Start_Form or End ID.";
//        }
//        $codexs = GenerateQrCode::whereBetween('id',[$request->start_form, $request->end])->get();
        return json_encode($codexs);
    }
    
    public function deleteCode ($id)
    {
        $code   = ProductQRcode::find($id);
        $code->delete();

        return redirect()->back()->with('message', 'product code deleted');
    }

//    generate qr code
    public function newQRCode ()
    {
//return QrCode::generate('asdkfksdjf');
//        $numberCode = mt_rand(1000000,9999999);
//        $letterCode = Str::random(6);
//        $code = strtoupper(uniqid());
        for ($i = 0; $i < 10; ++$i)
        {
            $letterCode = Str::random(6);
            $existCode = GenerateQrCode::where('code', $letterCode)->exists();
            if (! $existCode)
            {
                $qrImagePath = './admin/qrImage/'.$letterCode.'.png';
                QrCode::size(250)->format('png')->errorCorrection('H')->generate($letterCode, public_path($qrImagePath));
                $code   = new GenerateQrCode();
                $code->code = $letterCode;
                $code->qr_image = $qrImagePath;
                $code->save();


            }
        }

        return redirect()->back()->with('message', 'code generated');
    }

//    manage qr code
    public function manageQRCode ()
    {
        $codes  = GenerateQrCode::orderBy('id', 'DESC')->get();
        return view('admin.qrCode.mngQRCode', [
            'codes' => $codes,
        ]);
    }

//    get sub-category by category -- ajax
    public function getSubCategory ($id)
    {
        $subCategories  = SubCategory::where('category_id', $id)->get();
        $qRcodes  = GenerateQrCode::all();

        $codes = [];
        foreach ($qRcodes as $qRcode)
        {
            $exist = ProductQRcode::where('code', $qRcode->code)->exists();
            if (! $exist)
            {
                $codes[] = $qRcode;
            }
        }
        $result = [
            'subCategories' => $subCategories,
            'codes'         => $codes,
        ];
        return json_encode($result);
    }
//    get products by sub-category -- ajax
    public function getproducts ($id)
    {
        $products   = Product::where('sub_category_id', $id)->get();

        return json_encode($products);
    }

}
