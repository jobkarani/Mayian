import React from "react";
import Skeleton from "@mui/material/Skeleton";

const BlogCardLoading = () => {
    return (
        <div className="blog-item">
            <div className="blog-item-thumb">
                <Skeleton
                    variant="rectangular"
                    height={230}
                    className="w-100 rounded-3"
                />
            </div>
            <div className="blog-item-info">
                <div className="blog-item-meta">
                    <ul>
                        <li>
                            <Skeleton className="w-25" />
                        </li>
                        <li>
                            <Skeleton className="w-25" />
                        </li>
                    </ul>
                </div>
                <h5>
                    <Skeleton className="w-100" />
                </h5>
                <p>
                    <Skeleton className="w-50" />
                </p>
            </div>
        </div>
    );
};

export default BlogCardLoading;
