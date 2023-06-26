import React from "react";
import BlogCard from "../../blog/components/BlogCard";
import DataRepository from "../../../../repositories/DataRepository";

import { blogsLoading, blogs } from "../../../store/slices/dataSlice";
import BlogCardLoading from "../../blog/components/BlogCardLoading";
import { NavLink } from "react-router-dom";

const BlogAreaSection = () => {
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    YEST.useEffect(async () => {
        if (dataState.blogs.length === 0) {
            YEST.dispatch(blogsLoading());
            setTimeout(async () => {
                let response = await DataRepository.getBlogs();
                YEST.dispatch(
                    blogs({
                        data: response.data.data,
                        nextPage: response.data.links.next,
                    })
                );
                YEST.dispatch(blogsLoading());
            }, 1 * 1000);
        }
    }, []);

    return (
        <>
            <div className="blog-area py-80">
                <div className="container">
                    <div className="yest-heading row d-flex justify-content-center justify-content-md-between  align-items-center">
                        <div className="col-auto text-center text-md-start">
                            <span className="yest-title-heading">
                                {YEST.t("recent_posts")}
                            </span>
                            <h2 className="yest-title">
                                {YEST.t("latest_news__blogs")}
                            </h2>
                        </div>
                        <div className="col-auto">
                            <NavLink
                                to="/blogs"
                                className="search-btn px-3 fw-500"
                            >
                                {YEST.t("all_blogs")}{" "}
                            </NavLink>
                        </div>
                    </div>

                    <div className="row g-4">
                        {dataState.blogsLoading &&
                            [...Array(3)].map((x, i) => (
                                <div
                                    key={"best-blogs-" + i}
                                    className={"col-md-6 col-lg-4"}
                                >
                                    <BlogCardLoading />
                                </div>
                            ))}

                        {!dataState.blogsLoading &&
                            dataState.blogs &&
                            dataState.blogs.slice(0, 3).map((blog, i) => (
                                <div
                                    key={"best-blogs-" + i}
                                    className={"col-md-6 col-lg-4"}
                                >
                                    <BlogCard blog={blog} />
                                </div>
                            ))}
                    </div>
                </div>
            </div>
        </>
    );
};

export default BlogAreaSection;
