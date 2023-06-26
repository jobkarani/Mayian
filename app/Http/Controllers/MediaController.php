<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Upload;
use Auth;
use Storage;

class MediaController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_media'])->only('index');
        $this->middleware(['permission:delete_media'])->only('destroy');
    }

    # get all data
    public function index(Request $request)
    {
        $all_uploads = Upload::query();
        $search = null;

        if ($request->search != null) {
            $search = $request->search;
            $all_uploads->where('file_original_name', 'like', '%' . $request->search . '%');
        }

        $all_uploads = $all_uploads->latest()->paginate(48)->appends(request()->query());

        return view('backend.uploaded_files.index', compact('all_uploads', 'search'));
    }

    # show uploader modal
    public function uploaderModal(Request $request)
    {
        return view('uploader.yest-uploader');
    }

    # upload new files
    public function upload(Request $request)
    {
        $type = array(
            "jpg" => "image",
            "jpeg" => "image",
            "png" => "image",
            "svg" => "image",
            "webp" => "image",
            "gif" => "image",
            "mp4" => "video",
            "mpg" => "video",
            "mpeg" => "video",
            "webm" => "video",
            "ogg" => "video",
            "avi" => "video",
            "mov" => "video",
            "flv" => "video",
            "swf" => "video",
            "mkv" => "video",
            "wmv" => "video",
            "wma" => "audio",
            "aac" => "audio",
            "wav" => "audio",
            "mp3" => "audio",
            "zip" => "archive",
            "rar" => "archive",
            "7z" => "archive",
            "doc" => "document",
            "txt" => "document",
            "docx" => "document",
            "pdf" => "document",
            "csv" => "document",
            "xml" => "document",
            "ods" => "document",
            "xlr" => "document",
            "xls" => "document",
            "xlsx" => "document"
        );

        if ($request->hasFile('uppyMediaFile')) {
            $upload = new Upload;
            $upload->file_original_name = null;

            $arr = explode('.', $request->file('uppyMediaFile')->getClientOriginalName());

            for ($i = 0; $i < count($arr) - 1; $i++) {
                if ($i == 0) {
                    $upload->file_original_name .= $arr[$i];
                } else {
                    $upload->file_original_name .= "." . $arr[$i];
                }
            }

            $upload->file_name = $request->file('uppyMediaFile')->store('uploads/media');
            $upload->user_id = Auth::user()->id;
            $upload->extension = $request->file('uppyMediaFile')->getClientOriginalExtension();
            if (isset($type[$upload->extension])) {
                $upload->type = $type[$upload->extension];
            } else {
                $upload->type = "others";
            }
            $upload->file_size = $request->file('uppyMediaFile')->getSize();
            $upload->save();

            return '{}';
        }
    }

    # get files in selection
    public function getMediaFiles(Request $request)
    {
        $uploads = Upload::where('user_id', Auth::user()->id);

        if ($request->search != null) {
            $uploads->where('file_original_name', 'like', '%' . $request->search . '%');
        }
        return $uploads->latest()->paginate(30)->appends(request()->query());
    }

    # delete media
    public function destroy(Request $request, $id)
    {
        $upload = Upload::findOrFail($id);
        try {
            if (env('FILESYSTEM_DRIVER') == 's3') {
                Storage::disk('s3')->delete($upload->file_name);
                if (file_exists(public_path() . '/' . $upload->file_name)) {
                    unlink(public_path() . '/' . $upload->file_name);
                }
            } else {
                unlink(public_path() . '/' . $upload->file_name);
            }
            $upload->delete();
            flash(localize('File deleted successfully'))->success();
        } catch (\Exception $e) {
            $upload->delete();
            flash(localize('File deleted successfully'))->success();
        }
        return back();
    }

    # generate preview
    public function get_preview_files(Request $request)
    {
        $ids = explode(',', $request->ids);
        $files = Upload::whereIn('id', $ids)->get();
        return $files;
    }
}
