import React from "react";
import Skeleton from "@mui/material/Skeleton";

const RoomSingleLoading = () => {
    return (
        <>
            <div className="row">
                <div className="col-lg-8">
                    <div className="room-details">
                        <div className="room-details-img">
                            <div className="room-details-slider">
                                <Skeleton
                                    variant="rounded"
                                    animation="wave"
                                    height={400}
                                    className="room-details-slider-single"
                                />
                            </div>
                        </div>
                        <div className="room-details-content">
                            <div className="room-details-info">
                                <h4>
                                    <Skeleton animation="wave" width={200} />
                                </h4>
                                <div className="room-details-meta">
                                    <Skeleton animation="wave" width={350} />
                                </div>
                            </div>
                            <div className="room-details-price-wrapper">
                                <div className="room-details-price">
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            width={200}
                                        />
                                    </h4>
                                </div>
                                <div className="room-details-rate">
                                    <Skeleton animation="wave" width={350} />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <div className="col-lg-4">
                    <div className="room-sidebar">
                        <div className="search-area">
                            <div className="search-form-wrapper">
                                <h3>
                                    <Skeleton
                                        animation="wave"
                                        className="w-100"
                                    />
                                </h3>
                                <div className="row align-items-end">
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                    <h4>
                                        <Skeleton
                                            animation="wave"
                                            className="w-100"
                                        />
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default RoomSingleLoading;
