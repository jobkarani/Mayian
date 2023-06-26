import React from "react";

import DataRepository from "../../../../repositories/DataRepository";

import {
    events,
    nextEvents,
    nextLoading,
} from "../../../store/slices/dataSlice";
import EventCardLoading from "./EventCardLoading";
import EventCard from "./EventCard";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";
const EventList = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const [loading, setloading] = YEST.useState(true);

    // get all events
    YEST.useEffect(async () => {
        let response = await DataRepository.getEvents();
        YEST.dispatch(
            events({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        setloading(false);
    }, []);

    // get next events
    const getNextEvents = async () => {
        YEST.dispatch(nextLoading());
        let response = await DataRepository.getNextEvents(
            dataState.nextEventsLink
        );
        YEST.dispatch(
            nextEvents({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        YEST.dispatch(nextLoading());
    };

    return (
        <div className="event-area pt-120 pb-100">
            <div className="container">
                <div className="row">
                    {loading &&
                        [...Array(4)].map((x, i) => (
                            <div key={"events-" + i} className="col-12">
                                <EventCardLoading />
                            </div>
                        ))}

                    {!loading &&
                        dataState.events.map((event, serviceIndex) => {
                            return (
                                <div
                                    key={"events-" + serviceIndex}
                                    className="col-12"
                                >
                                    <EventCard event={event} />
                                </div>
                            );
                        })}
                </div>
                {dataState.nextEventsLink !== null && (
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
                                onClick={getNextEvents}
                            >
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

export default EventList;
