<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class LogoController extends Controller
{
    public function uploadLogo(Request $request)
    {
        // Validate the incoming request to ensure a logo file is uploaded
        $request->validate([
            'logo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',  // You can customize these rules as needed
        ]);

        // Get the uploaded logo file
        $file = $request->file('logo');
        
        // Generate a unique name for the file
        $fileName = time() . '_' . $file->getClientOriginalName();

        // Upload to S3
        Storage::disk('s3')->put($fileName, file_get_contents($file));

        // Get the URL of the uploaded file
        $fileUrl = Storage::disk('s3')->url($fileName);

        // Return the file URL as a JSON response
        return response()->json(['url' => $fileUrl]);
    }
}
