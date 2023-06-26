<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogCategory;
use App\Models\BlogCategoryTranslation;
use Str;

class BlogCategoryController extends Controller
{
    # constructor
    public function __construct()
    {
        // Staff Permission Check
        $this->middleware(['permission:show_blog_categories'])->only('index');
        $this->middleware(['permission:add_blog_categories'])->only(['create', 'store']);
        $this->middleware(['permission:edit_blog_categories'])->only(['edit', 'update']);
        $this->middleware(['permission:delete_blog_categories'])->only('destroy');
    }

    # get all blog categories
    public function index(Request $request)
    {
        $sort_search = null;
        $categories = BlogCategory::orderBy('name', 'asc');

        if ($request->has('search')) {
            $sort_search = $request->search;
            $categories = $categories->where('name', 'like', '%' . $sort_search . '%');
        }

        $categories = $categories->paginate(15);
        return view('backend.blog.category.index', compact('categories', 'sort_search'));
    }

    # create form
    public function create()
    {
        // 
    }

    # store new category
    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|max:255',
        ]);

        $blog_category = new BlogCategory;

        $blog_category->name = $request->name;
        $blog_category->slug = Str::slug($request->name, '-') . '-' . strtolower(Str::random(5));
        $blog_category->save();

        $blog_category_translation = BlogCategoryTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'blog_category_id' => $blog_category->id]);
        $blog_category_translation->name = $request->name;
        $blog_category_translation->save();

        flash(localize('Blog category has been created successfully'))->success();
        return redirect()->route('blog-category.index');
    }

    # show category details
    public function show($id)
    {
        //
    }

    # edit form
    public function edit(Request $request, $id)
    {
        $lang   = $request->lang;
        $category = BlogCategory::find($id);
        $all_categories = BlogCategory::all();

        return view('backend.blog.category.edit',  compact('category', 'all_categories', 'lang'));
    }

    # update data
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        $blog_category = BlogCategory::find($id);

        if ($request->lang == env("DEFAULT_LANGUAGE")) {
            $blog_category->name = $request->name;
        }

        $blog_category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name));
        $blog_category->save();

        $blog_category_translation = BlogCategoryTranslation::firstOrNew(['lang' => $request->lang, 'blog_category_id' => $blog_category->id]);
        $blog_category_translation->name = $request->name;
        $blog_category_translation->save();

        flash(localize('Blog category has been updated successfully'))->success();
        return redirect()->route('blog-category.index');
    }

    # delete data
    public function destroy($id)
    {
        $blog_category = BlogCategory::findOrFail($id);

        try {
            $blog_category->blog_category_translations()->delete();
            $blog_category->blogs()->delete();
        } catch (\Throwable $th) {
            //throw $th;
        }

        BlogCategory::destroy($id);

        flash(localize('Blog Category has been deleted successfully'))->success();
        return back();
    }
}
