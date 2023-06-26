import React from "react";
import Skeleton from "@mui/material/Skeleton";

const RoomCardLoading = () => {
    return (
        <div className="room-item bg-light">
            <div className="room-img">
                <Skeleton
                    variant="rectangular"
                    height={230}
                    className="w-100 rounded-3"
                />
            </div>
            <div className="room-content">
                <Skeleton className="w-25" />
                <Skeleton className="w-50" />
                <div className="room-price">
                    <span>
                        <Skeleton className="w-50" />
                    </span>
                </div>

                <div className="my-1">
                    <span>
                        <Skeleton className="w-75" />
                    </span>
                </div>

                <div className="mb-1">
                    <span>
                        <Skeleton className="w-75" />
                    </span>
                </div>

                <div className="mb-2">
                    <span>
                        <Skeleton className="w-100" />
                    </span>
                </div>

                <div className="footer-bottom">
                    <Skeleton />
                </div>
            </div>
        </div>
    );
};

export default RoomCardLoading;
