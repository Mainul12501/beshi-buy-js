<?php

namespace App\Http\Livewire\Admin\FrontLayout;

use App\Models\Category;

use App\Models\FrontLayout;
use Livewire\Component;

class Layout extends Component
{
    protected $listeners    = ['edit' => 'edit', 'editAdsType' => 'editAdsType', 'editAdsLayout' => 'editAdsLayout'];
    public function render()
    {
        return view('livewire.admin.front-layout.layout', [
            'layouts'   => FrontLayout::orderBy('serial', 'ASC')->get(),
        ]);
    }
    public function refresh()
    {
        $cats   = Category::all();
        $lays   = FrontLayout::all();
        if (count($lays)==0)
        {
            $g = 1;
            foreach ($cats as $r)
            {
                $o  = new FrontLayout();
                $o->category_id         = $r->id;
                $o->serial              = $g++;
                $o->layout_type         = 1;
                $o->cat_status         = $r->status;
                $o->save();
            }
            session()->flash('message', 'Refreshed Successfully...');
        } else {
            foreach ($cats as $cat)
            {
                $last   = FrontLayout::where('category_id', $cat->id)->first();
                if (!$last)
                {
                    $lastLayout = FrontLayout::orderBy('serial', 'DESC')->first();
                    $o  = new FrontLayout();
                    $o->category_id         = $cat->id;
                    $o->serial              = $lastLayout->serial+1;
                    $o->layout_type         = 1;
                    $o->cat_status         = $cat->status;
                    $o->save();
                }
            }
            session()->flash('message', 'Refreshed Successfully...');
        }
    }
    public function serialUp ($id)
    {
        $layout = FrontLayout::findOrFail($id);
        $preId  = FrontLayout::where('serial', '<', $layout->serial)->orderBy('serial', 'DESC')->first();

        if ($preId == null)
        {
            session()->flash('message', 'This is 1st row. Try Lower rows......');
        } else {
            $previous   = $preId->serial;
            $current   = $layout->serial;
            $layout->serial = $previous;
            $layout->save();
            $preId->serial  = $current;
            $preId->save();
            session()->flash('message', 'Serial Reduced...');
        }

    }
    public function serialDown ($id)
    {
        $layout = FrontLayout::findOrFail($id);
        $preId  = FrontLayout::where('serial', '>', $layout->serial)->orderBy('serial', 'ASC')->first();

        if ($preId == null)
        {
            session()->flash('message', 'This is last row. Try Upper rows......');
        } else {
            $next   = $preId->serial;
            $current   = $layout->serial;
            $layout->serial = $next;
            $preId->serial  = $current;
            $layout->save();
            $preId->save();
            session()->flash('message', 'Serial Increased...');
        }

    }
    public function catPublications ($id)
    {
//        $cat    = Category::findOrFail($id);
//        if ($cat->status == 1)
//        {
//            $cat->status = 0;
//            $cat->save();
//            session()->flash('message', 'Status Changed');
//        } else {
//            $cat->status = 1;
//            $cat->save();
//            session()->flash('message', 'Status Changed');
//        }

        $layout    = FrontLayout::findOrFail($id);
        $cat    = Category::findOrFail($layout->category_id);
        if ($cat->status == 1)
        {
            $cat->status = 0;
            $cat->save();
            $layout->cat_status = 0;
            $layout->save();
        } else {
            $cat->status = 1;
            $cat->save();
            $layout->cat_status = 1;
            $layout->save();
        }
        session()->flash('message', 'Status Changed');
    }
    public function edit ($val, $id)
    {
        if ($val== null)
        {
            session()->flash('message', 'Please Select a Type....');
        } else {
            $layout = FrontLayout::findOrFail($id);
            $layout->layout_type    = $val;
            $layout->save();
            session()->flash('message', 'Layout Type Changed');
        }
    }
    public function editAdsType ($val, $id)
    {
        if ($val== null)
        {
            session()->flash('message', 'Please Select a Ads Type....');
        } else {
            $layout = FrontLayout::findOrFail($id);
            $layout->ads_type    = $val;
            $layout->save();
            session()->flash('message', 'Layout Type Changed');
        }
    }
    public function editAdsLayout ($val, $id)
    {
        if ($val== null)
        {
            session()->flash('message', 'Please Select a Ads Layout....');
        } else {
            $layout = FrontLayout::findOrFail($id);
            $layout->ads_layout    = $val;
            $layout->save();
            session()->flash('message', 'Layout Type Changed');
        }
    }
    public function del ($id)
    {
        $layout = FrontLayout::findOrFail($id);
        $layout->delete();
        session()->flash('message', 'Deleted Successfully.....');
    }
}
