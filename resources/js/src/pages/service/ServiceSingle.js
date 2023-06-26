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
import { bestServices } from "../../store/slices/dataSlice";
import { NavLink } from "react-router-dom";

// install Swiper modules
SwiperCore.use([Autoplay, Navigation]);

const ServiceSingle = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const { slug } = YEST.useParams();
    const serviceDetailsRef = YEST.useRef(null);

    const [service, setService] = YEST.useState(null);
    const [loading, setloading] = YEST.useState(true);

    YEST.useEffect(() => {
        setloading(true);
        getServiceDetails();
    }, [slug]);

    // get service details
    const getServiceDetails = async () => {
        let response = await DataRepository.getServiceDetails(slug);
        setService(response.data.data);
        YEST.dispatch(bestServices(response.data.best));
        setloading(false);
    };

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    if (!loading && !service) {
        return "";
    }
    return (
        <main className="main">
            <BreadCrumb>
                <h2 className="breadcrumb-title">
                    {YEST.t("service_details")}
                </h2>
                <ul className="breadcrumb-menu">
                    <li>
                        <NavLink to="/">{YEST.t("home")}</NavLink>
                    </li>
                    <li className="active">{YEST.t("service_details")}</li>
                </ul>
            </BreadCrumb>

            <div className="service-single-area  pt-120 pb-100">
                <div className="container">
                    <div className="service-single-wrapper">
                        {loading ? (
                            <RoomSingleLoading />
                        ) : (
                            <div className="row">
                                <div className="col-xl-8 col-lg-8">
                                    <div className="service-details">
                                        {/* swiper slider here */}
                                        <Swiper
                                            ref={serviceDetailsRef}
                                            loop={true}
                                            navigation={true}
                                            autoplay={true}
                                            slidesPerView={1}
                                            className={`room-details-slider swiper-nav-round mb-30`}
                                        >
                                            {service.gallery_images.map(
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

                                        <div className="service-details">
                                            <h3 className="mb-30">
                                                {service.name}
                                            </h3>
                                            <div
                                                dangerouslySetInnerHTML={sanitizedData(
                                                    service.description
                                                )}
                                            ></div>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-xl-4 col-lg-4">
                                    <div className="service-sidebar">
                                        <div className="widget category">
                                            <h4 className="widget-title">
                                                {YEST.t("best_services")}
                                            </h4>
                                            <div className="category-list">
                                                {dataState.bestServices.map(
                                                    (
                                                        bestServiceInSinglePage,
                                                        index
                                                    ) => {
                                                        return (
                                                            <NavLink
                                                                to={`/services/${bestServiceInSinglePage.slug}`}
                                                            >
                                                                <i className="far fa-angle-double-right"></i>
                                                                {
                                                                    bestServiceInSinglePage.name
                                                                }
                                                            </NavLink>
                                                        );
                                                    }
                                                )}
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

export default ServiceSingle;
