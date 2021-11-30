<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductReview;
use App\Models\ProductSubReview;
use App\Models\User;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function manage ()
    {
        $comments   = ProductReview::orderBy('id', 'DESC')->get();
        return view('admin.product-comments.manage', ['comments' => $comments,]);
    }
    public function changeStatus ($id)
    {
        $mainComment    = ProductReview::find($id);

        if ($mainComment->status == 0)
        {
            $mainComment->status = 1;
            $mainComment->save();
        } elseif ($mainComment->status == 1)
        {
            $mainComment->status    = 0;
            $mainComment->save();
        }
        return redirect()->back()->with('message', 'Status Changed');
    }
    public function deleteMainComment ($id)
    {
        $mainComment    = ProductReview::find($id);
        $subComments    = ProductSubReview::where('comment_id', $id)->get();
        foreach ($subComments as $subComment)
        {
            $subComment->delete();
        }
        $mainComment->delete();

        return redirect()->back()->with('message', 'Review Deleted Successfully');
    }
    public function deleteSubComment ($id)
    {
        $x  = ProductSubReview::find($id);
        $x->delete();
        return redirect()->back();
    }

    public function newMainComment (Request $request)
    {
        $mainComment = new ProductReview();

        $mainComment->product_id    = $request->product_id;
        $mainComment->user_id   = $request->user_id;
        $mainComment->product_url   = $request->product_url;
        $mainComment->comment   = $request->comment;
        $mainComment->status    = 0;
        $mainComment->save();

        return redirect()->back()->with('message', 'Thanks for your valuable review. Our Admin will publish your review soon. Thanks for staying with us.....');
    }

    public function newSubComment (Request $request)
    {
        $comment    = ProductReview::find($request->comment_id);
        if ($comment->has_reply != 1)
        {
            $comment->has_reply     = 1;
            $comment->save();
        }
        $subComment = new ProductSubReview();
        $subComment->product_id     = $request->product_id;
        $subComment->user_id    = $request->user_id;
        $subComment->comment_id     = $request->comment_id;
        $subComment->product_url    = $request->product_url;
        $subComment->sub_comment    = $request->sub_comment;
        $subComment->status     = 1;
        $subComment->save();

        return redirect()->back()->with('subMsg', 'Thanks for your reply..');
    }

    public function ajaxSubComment (Request $request)
    {
        $subComments    = ProductSubReview::where('comment_id', $request->comment_id)->get();
        $productUrl     = $request->product_url;
        $userNames   = [];
        foreach ($subComments as $subComment)
        {
            $userNames[]    = User::where('id', $subComment->user_id)->select('id','name')->first();
        }
//        $productNames   = [];
//        foreach ($subComments as $subComment)
//        {
//            $productNames[] = Product::where('id', $subComment->product_id)->select('id','name')->get();
//        }
        $productName    = Product::where('id', $request->product_id)->select('name')->first();

        $result     = [
            'subComments'   => $subComments,
            'productUrl'    => $productUrl,
            'userNames'     => $userNames,
            'productName'  => $productName,
        ];
        return json_encode($result);
    }
}
