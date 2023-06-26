import React from "react";
import { NavLink } from "react-router-dom";

import RoomCard from "../../room/components/RoomCard";
import RoomCardLoading from "../../room/components/RoomCardLoading";

const RoomAreaSection = () => {
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    return (
        <>
            <div className="room-area pt-80">
                <div className="container">
                    <div className="yest-heading row d-flex justify-content-center justify-content-md-between align-items-center">
                        <div className="col-auto text-center text-md-start">
                            <span className="yest-title-heading">
                                {YEST.t("find_peace_here")}
                            </span>
                            <h2 className="yest-title">
                                {YEST.t("our_best_cottages")}
                            </h2>
                        </div>
                        <div className="col-auto">
                            <NavLink
                                to="/cottages"
                                className="search-btn px-3 fw-500"
                            >
                                {YEST.t("all_cottages")}{" "}
                            </NavLink>
                        </div>
                    </div>
                    <div className="row g-4">
                        {dataState.loading &&
                            [...Array(6)].map((x, i) => (
                                <div className="col-md-4" key={i}>
                                    <RoomCardLoading />
                                </div>
                            ))}

                        {!dataState.loading &&
                            dataState.bestCottages.map(
                                (bestCottage, bestCottageIndex) => {
                                    return (
                                        <div
                                            className="col-md-6 col-lg-4"
                                            key={`best-${bestCottageIndex}`}
                                        >
                                            <RoomCard cottage={bestCottage} />
                                        </div>
                                    );
                                }
                            )}
                    </div>
                </div>
            </div>
        </>
    );
};

export default RoomAreaSection;
