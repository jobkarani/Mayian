import React from "react";
import DataRepository from "../../../repositories/DataRepository";
import BreadCrumb from "../../inc/BreadCrumb";
import DOMPurify from "dompurify";
// import Swiper core and required modules
import SwiperCore, { Autoplay, Navigation } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";
import RoomSingleLoading from "../room/components/RoomSingleLoading";
import { NavLink } from "react-router-dom";
import Helper from "../../helpers/Helper";

// install Swiper modules
SwiperCore.use([Autoplay, Navigation]);

const EventSingle = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const { slug } = YEST.useParams();
    const eventDetailsRef = YEST.useRef(null);

    const [event, setEvent] = YEST.useState(null);
    const [loading, setloading] = YEST.useState(true);

    YEST.useEffect(() => {
        setloading(true);
        getEventDetails();
    }, [slug]);

    // get event details
    const getEventDetails = async () => {
        let response = await DataRepository.getEventDetails(slug);
        setEvent(response.data.data);
        setloading(false);
    };

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    if (!loading && !event) {
        return "";
    }
    return (
        <main className="main">
            <BreadCrumb>
                <h2 className="breadcrumb-title">{YEST.t("event_details")}</h2>
                <ul className="breadcrumb-menu">
                    <li>
                        <NavLink to="/">{YEST.t("home")}</NavLink>
                    </li>
                    <li className="active">{YEST.t("event_details")}</li>
                </ul>
            </BreadCrumb>

            <div className="event-single-area  pt-120 pb-100">
                <div className="container">
                    <div className="event-single-wrapper">
                        {loading ? (
                            <RoomSingleLoading />
                        ) : (
                            <div className="row">
                                <div className="col-xl-8 col-lg-8">
                                    <div className="event-details">
                                        {/* swiper slider here */}
                                        <Swiper
                                            ref={eventDetailsRef}
                                            loop={true}
                                            navigation={true}
                                            autoplay={true}
                                            slidesPerView={1}
                                            className={`room-details-slider swiper-nav-round mb-30`}
                                        >
                                            {event.gallery_images.map(
                                                (gallery, index) => {
                                                    return (
                                                        <SwiperSlide
                                                            key={
                                                                "room-gallery-" +
                                                                index
                                                            }
                                                        >
                                                            <div className="room-details-slider-single">
                                                                <img
                                                                    src={
                                                                        gallery
                                                                    }
                                                                    alt=""
                                                                />
                                                            </div>
                                                        </SwiperSlide>
                                                    );
                                                }
                                            )}
                                        </Swiper>

                                        <div className="event-details">
                                            <h3 className="mb-30">
                                                {event.title}
                                            </h3>
                                            <div
                                                dangerouslySetInnerHTML={sanitizedData(
                                                    event.description
                                                )}
                                            ></div>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-xl-4 col-lg-4">
                                    <div className="event-sidebar">
                                        <div className="widget event-single-info">
                                            <h4 className="widget-title">
                                                {YEST.t("event_information")}
                                            </h4>
                                            <p>{event.short_description}</p>
                                            <div className="event-content-wrapper">
                                                <div className="event-content-single">
                                                    <h5>
                                                        <div>
                                                            {YEST.t(
                                                                "event_date"
                                                            )}
                                                        </div>
                                                    </h5>
                                                    <p>
                                                        <i className="far fa-calendar-alt"></i>{" "}
                                                        {event.start_date} -{" "}
                                                        {event.end_date}
                                                    </p>
                                                </div>
                                                <div className="event-content-single">
                                                    <h5>
                                                        <div>
                                                            {YEST.t(
                                                                "event_time"
                                                            )}
                                                        </div>
                                                    </h5>
                                                    <p>
                                                        <i className="far fa-clock"></i>{" "}
                                                        {event.time}
                                                    </p>
                                                </div>
                                                <div className="event-content-single">
                                                    <h5>
                                                        <div>
                                                            {YEST.t(
                                                                "event_location"
                                                            )}
                                                        </div>
                                                    </h5>
                                                    <p>
                                                        <i className="far fa-map-marker-alt"></i>{" "}
                                                        {event.location}
                                                    </p>
                                                </div>
                                                <div className="event-content-single">
                                                    <h5>
                                                        <div>
                                                            {YEST.t(
                                                                "event_cost"
                                                            )}
                                                        </div>
                                                    </h5>
                                                    <p>
                                                        <i className="far fa-usd-circle"></i>{" "}
                                                        {Helper.formatPrice(
                                                            event.fee
                                                        )}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </main>
    );
};

export default EventSingle;
