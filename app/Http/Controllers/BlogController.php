<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogCategory;
use App\Models\Blog;
use App\Models\BlogTranslation;
use Str;

class BlogController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_blogs'])->only('index');
        $this->middleware(['permission:add_blogs'])->only(['create', 'store']);
        $this->middleware(['permission:edit_blogs'])->only(['edit', 'update']);
        $this->middleware(['permission:delete_blogs'])->only('destroy');
        $this->middleware(['permission:publish_blogs'])->only('change_status');
    }

    # get all blogs
    public function index(Request $request)
    {
        $sort_search = null;
        $blogs = Blog::orderBy('created_at', 'desc');

        if ($request->search != null) {
            $blogs = $blogs->where('title', 'like', '%' . $request->search . '%');
            $sort_search = $request->search;
        }

        $blogs = $blogs->paginate(15);

        return view('backend.blog.blogs.index', compact('blogs', 'sort_search'));
    }

    # create form of blog
    public function create()
    {
        $blog_categories = BlogCategory::all();
        return view('backend.blog.blogs.create', compact('blog_categories'));
    }

    # store new blog
    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'required',
            'title' => 'required|max:255',
        ]);

        $blog = new Blog;

        $blog->category_id = $request->category_id;
        $blog->title = $request->title;
        $blog->slug = Str::slug($request->title, '-') . '-' . strtolower(Str::random(5));
        $blog->short_description = $request->short_description;
        $blog->description = $request->description;


        $blog->thumbnail_image = $request->thumbnail_image;
        $blog->gallery_images                = $request->photos;


        $blog->meta_title = $request->meta_title;
        $blog->meta_image = (!is_null($request->meta_image)) ? $request->meta_image : $blog->thumbnail_image;
        $blog->meta_description = $request->meta_description;
        $blog->save();

        // blog Translations
        $blog_translation = BlogTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'blog_id' => $blog->id]);
        $blog_translation->title = $request->title;
        $blog_translation->short_description = $request->short_description;
        $blog_translation->description = $request->description;
        $blog_translation->save();

        flash(localize('Blog has been created successfully'))->success();
        return redirect()->route('blogs.index');
    }

    # will show details data
    public function show($id)
    {
        // 
    }

    # edit form
    public function edit(Request $request, $id)
    {
        $blog = Blog::find($id);
        $blog_categories = BlogCategory::all();
        $lang = $request->lang;

        return view('backend.blog.blogs.edit', compact('blog', 'blog_categories', 'lang'));
    }

    # update blog
    public function update(Request $request, $id)
    {
        $blog = Blog::find($id);

        if ($request->lang == env("DEFAULT_LANGUAGE")) {

            $blog->title = $request->title;
            $blog->short_description = $request->short_description;
            $blog->description = $request->description;
            $blog->slug = Str::slug($request->title, '-') . '-' . strtolower(Str::random(5));

            $blog->thumbnail_image = $request->thumbnail_image;
            $blog->category_id = $request->category_id;
            $blog->meta_title = $request->meta_title;
            $blog->meta_image = $request->meta_image;
            $blog->meta_description = $request->meta_description;
        }

        $blog->save();

        $blog_translation = BlogTranslation::firstOrNew(['lang' => $request->lang, 'blog_id' => $blog->id]);
        $blog_translation->title = $request->title;
        $blog_translation->short_description = $request->short_description;
        $blog_translation->description = $request->description;
        $blog_translation->save();

        flash(localize('Blog has been updated successfully'))->success();
        return back();
    }

    # update status
    public function change_status(Request $request)
    {
        $blog = Blog::find($request->id);
        $blog->status = $request->status;

        $blog->save();
        return 1;
    }

    # delete a blog
    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);

        try {
            $blog->blog_translations()->delete();
        } catch (\Throwable $th) {
            //throw $th;
        }

        Blog::destroy($id);
        flash(localize('Blog has been deleted successfully'))->success();
        return back();
    }
}
