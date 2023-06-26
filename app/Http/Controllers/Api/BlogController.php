<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\BlogResource;
use App\Models\Blog;
use App\Models\BlogCategory;

class BlogController extends Controller
{
    # get all blogs
    public function index()
    {
        return BlogResource::collection(Blog::latest()->where('status', 1)->paginate(9));
    }

    # blog details
    public function show($slug)
    {
        $blog = Blog::where('slug', $slug)->where('status', 1)->first();
        $latest = BlogResource::collection(Blog::latest()->take(3)->get());
        $categories = BlogCategory::latest()->get();
        return [
            'data'           => new BlogResource($blog),
            'latest'         => $latest,
            'categories'     => $categories
        ];
    }
}
