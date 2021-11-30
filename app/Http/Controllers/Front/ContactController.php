<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Models\ContactImage;
use Illuminate\Http\Request;
use Intervention\Image\Image;

class ContactController extends Controller
{
    public function manageContact ()
    {
        $contacts  = Contact::orderBy('id', 'DESC')->where('status', 0)->get();

        return view('admin.contact.contact', [
            'contacts' => $contacts,
        ]);
    }
    public function statusContact ($id)
    {
        $contact   = Contact::find($id);
        if ($contact->status === 0)
        {
            $contact->status   = 1;
            $contact->save();
        } elseif ($contact->status === 1)
        {
            $contact->status   = 0;
            $contact->save();
        }

        return redirect()->back()->with('message', 'Contact Info Seen');
    }
    public static function uploadContactMultipleImage($request, $contactId)
    {
        $images = $request->file('image');
        if (isset($images))
        {
            foreach ($images as $image) {
                $imageName = time().'_'.$image->getClientOriginalName();
                $directory = './admin/contact_images/';
                $imageUrl   =   $directory.$imageName;
                $save   = $image->move($directory, $imageName);
//                Image::make($image)->resize(390,340)->save($imageUrl);
                $contact = new ContactImage();
                $contact->contact_id = $contactId;
                $contact->image  = $imageUrl;
                $contact->save();
            }
        }

    }

    protected function contactData ($request)
    {
        $contact   = new Contact();

        $contact->name             = $request->name;
        $contact->email             = $request->email;
        $contact->mobile             = $request->mobile;
        $contact->description             = $request->description;
        $contact->status             = 0;
        $contact->save();

        $contactId   = $contact->id;
        return $contactId;
    }

    protected function contactValidation ($request)
    {
        return $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
        ]);
    }

    public function newContact (Request $request)
    {
        $this->contactValidation($request);
        $contactId    = $this->contactData($request);
        $this->uploadContactMultipleImage($request, $contactId);

        return redirect()->back()->with('message', 'Thanks for contacting us.');
    }

    public function deleteContact ($id)
    {
        $contact    = Contact::find($id);
        $contact->delete();

        $images     = ContactImage::where('contact_id', $id)->get();
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

        return redirect()->back()->with('message', 'Contact info deleted successfully.');
    }
}
