import React from "react";
import Skeleton from "@mui/material/Skeleton";
// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

const EventCardLoading = () => {
    return (
        <div className="event-item">
            <div className="row g-0 align-items-center">
                <div className="col-md-4">
                    <div className="event-img">
                        <Skeleton
                            variant="rectangular"
                            height={300}
                            className="w-100 rounded-3"
                        />
                    </div>
                </div>
                <div className="col-md-8">
                    <div className="event-content">
                        <span className="event-date">
                            <Skeleton className="w-50" />
                        </span>
                        <h4 className="event-title">
                            <Skeleton className="w-75" />
                        </h4>
                        <span className="event-address">
                            <Skeleton className="w-25" />
                        </span>
                        <p>
                            <Skeleton className="w-100" />
                            <Skeleton className="w-75" />
                        </p>
                        <button type="button" className="yest-btn">
                            <Loader type="Oval" color="#fff" height="20px" />
                        </button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default EventCardLoading;
