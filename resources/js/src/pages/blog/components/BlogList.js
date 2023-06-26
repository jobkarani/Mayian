import React from "react";
// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import DataRepository from "../../../../repositories/DataRepository";
import BlogCard from "./BlogCard";
import BlogCardLoading from "./BlogCardLoading";

import { blogs, nextBlogs, nextLoading } from "../../../store/slices/dataSlice";

const BlogList = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const [loading, setloading] = YEST.useState(false);

    YEST.useEffect(async () => {
        if (dataState.blogs.length === 0) {
            setloading(true);
            let response = await DataRepository.getBlogs();
            YEST.dispatch(
                blogs({
                    data: response.data.data,
                    nextPage: response.data.links.next,
                })
            );
            setloading(false);
        }
    }, []);

    // get next Blogs
    const getNextBlogs = async () => {
        YEST.dispatch(nextLoading());
        let response = await DataRepository.getNextBlogs(
            dataState.nextBlogsLink
        );
        YEST.dispatch(
            nextBlogs({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        YEST.dispatch(nextLoading());
    };

    return (
        <div className="blog-area pt-120 pb-100">
            <div className="container">
                <div className="row">
                    {loading &&
                        [...Array(12)].map((x, i) => (
                            <div
                                key={"services-" + i}
                                className="col-md-6 col-lg-4"
                            >
                                <BlogCardLoading />
                            </div>
                        ))}

                    {!loading &&
                        dataState.blogs.map((blog, blogIndex) => {
                            return (
                                <div
                                    key={"blogs-" + blogIndex}
                                    className="col-md-6 col-lg-4"
                                >
                                    <BlogCard blog={blog} />
                                </div>
                            );
                        })}
                </div>

                {dataState.nextBlogsLink !== null && (
                    <div className="text-center mt-5">
                        {dataState.nextLoading ? (
                            <button className="yest-btn" type="button">
                                <Loader
                                    type="Oval"
                                    color="#fff"
                                    height="20px"
                                />
                            </button>
                        ) : (
                            <button className="yest-btn" onClick={getNextBlogs}>
                                {YEST.t("load_more")}{" "}
                                <i className="far fa-sync"></i>
                            </button>
                        )}
                    </div>
                )}
            </div>
        </div>
    );
};

export default BlogList;
