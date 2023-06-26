import React from "react";

import DataRepository from "../../../../repositories/DataRepository";

import { cottageLoading } from "../../../store/slices/appSlice";
import {
    loading,
    cottages,
    nextCottages,
    nextLoading,
} from "../../../store/slices/dataSlice";

import RoomCard from "./RoomCard";
import RoomCardLoading from "./RoomCardLoading";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

const RoomList = () => {
    // search
    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const [startDate, endDate] = appState.dateRange;

    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    // get all cottages
    YEST.useEffect(async () => {
        if (!appState.cottageLoading) {
            YEST.dispatch(loading());
            let response = await DataRepository.getCottages();
            YEST.dispatch(
                cottages({
                    data: response.data.data,
                    nextPage: response.data.links.next,
                })
            );
            YEST.dispatch(loading());
        }
    }, []);

    // get filtered cottages
    YEST.useEffect(async () => {
        if (appState.cottageLoading) {
            let data = {
                checkIn: startDate,
                checkOut: endDate,
                rooms: appState.rooms[appState.selectedRoomIndex].value,
            };
            let response = await DataRepository.getFilteredCottages(data);
            YEST.dispatch(
                cottages({
                    data: response.data.data,
                    nextPage: null,
                })
            );
            YEST.dispatch(cottageLoading(false));
        }
    }, [appState.cottageLoading]);

    // get next cottages
    const getNextCottages = async () => {
        YEST.dispatch(nextLoading());
        let response = await DataRepository.getNextCottages(
            dataState.nextCottagesLink
        );
        YEST.dispatch(
            nextCottages({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        YEST.dispatch(nextLoading());
    };

    return (
        <div className="room-area pt-120 pb-100">
            <div className="container">
                <div className="row">
                    <div className="col-md-12">
                        <div className="row g-4">
                            {dataState.loading &&
                                [...Array(6)].map((x, i) => (
                                    <div className="col-md-4" key={i}>
                                        <RoomCardLoading />
                                    </div>
                                ))}

                            {!dataState.loading &&
                                dataState.cottages.map(
                                    (cottage, cottageIndex) => {
                                        return (
                                            <div
                                                className="col-md-4"
                                                key={`cottage-${cottageIndex}`}
                                            >
                                                <RoomCard cottage={cottage} />
                                            </div>
                                        );
                                    }
                                )}
                        </div>
                        {dataState.nextCottagesLink !== null && (
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
                                    <button
                                        className="yest-btn"
                                        onClick={getNextCottages}
                                    >
                                        {YEST.t("load_more")}{" "}
                                        <i className="far fa-sync"></i>
                                    </button>
                                )}
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </div>
    );
};

export default RoomList;
