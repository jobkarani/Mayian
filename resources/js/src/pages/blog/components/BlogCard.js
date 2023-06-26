import React from "react";
import { NavLink } from "react-router-dom";

const BlogCard = ({ blog }) => {
    return (
        <div className="blog-item">
            <div className="blog-item-thumb">
                <img src={blog.thumbnail_image} alt={blog.title} />
            </div>
            <div className="blog-item-info">
                <div className="blog-item-meta">
                    <ul>
                        <li className="text-capitalize">
                            <i
                                className="far fa-bookmark
    "
                            ></i>{" "}
                            {blog.category}
                        </li>
                        <li>
                            <i className="far fa-calendar-alt"></i>{" "}
                            {blog.created_at}
                        </li>
                    </ul>
                </div>
                <h5>
                    <NavLink
                        to={`/blogs/${blog.slug}`}
                        className="blog-item-title fw-bold"
                    >
                        {blog.title}
                    </NavLink>
                </h5>
                <p>{blog.short_description}</p>
                <NavLink to={`/blogs/${blog.slug}`} className="blog-item-more">
                    {YEST.t("explore_more")}{" "}
                    <i className="far fa-long-arrow-right"></i>
                </NavLink>
            </div>
        </div>
    );
};

export default BlogCard;
