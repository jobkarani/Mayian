import { useRef } from "react";

// import Swiper core and required modules
import SwiperCore, { Autoplay } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

import DataRepository from "../../../../repositories/DataRepository";

import { servicesLoading, bestServices } from "../../../store/slices/dataSlice";
import ServiceCardLoading from "../../service/components/ServiceCardLoading";
import ServiceCard from "../../service/components/ServiceCard";
import { NavLink } from "react-router-dom";

// install Swiper modules
SwiperCore.use([Autoplay]);

const ServiceAreaSection = () => {
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const ServiceAreaSectionRef = useRef(null);

    YEST.useEffect(async () => {
        if (dataState.bestServices.length === 0) {
            YEST.dispatch(servicesLoading());
            setTimeout(async () => {
                let response = await DataRepository.getBestServices();
                YEST.dispatch(bestServices(response.data.data));
                YEST.dispatch(servicesLoading());
            }, 1 * 1000);
        }
    }, []);

    return (
        <>
            <div className="service-area pt-80">
                <div className="container">
                    <div className="yest-heading row d-flex justify-content-center justify-content-md-between align-items-center">
                        <div className="col-auto text-center text-md-start">
                            <span className="yest-title-heading">
                                {YEST.t("we_provide")}
                            </span>
                            <h2 className="yest-title">
                                {YEST.t("our_best_services")}
                            </h2>
                        </div>
                        <div className="col-auto">
                            <NavLink
                                to="/services"
                                className="search-btn px-3 fw-500"
                            >
                                {YEST.t("all_services")}{" "}
                            </NavLink>
                        </div>
                    </div>
                    <div className="row mx-0 g-4">
                        {/* swiper slider here */}
                        <Swiper
                            ref={ServiceAreaSectionRef}
                            loop={true}
                            autoplay={true}
                            breakpoints={{
                                0: {
                                    slidesPerView: 1,
                                    spaceBetween: 9,
                                },
                                600: {
                                    slidesPerView: 2,
                                    spaceBetween: 9,
                                },
                                1000: {
                                    slidesPerView: 3,
                                    spaceBetween: 25,
                                },
                            }}
                            className={`partner-wrapper partner-slider`}
                        >
                            {dataState.servicesLoading &&
                                [...Array(3)].map((x, i) => (
                                    <SwiperSlide key={"best-services-" + i}>
                                        <ServiceCardLoading />
                                    </SwiperSlide>
                                ))}

                            {!dataState.servicesLoading &&
                                dataState.bestServices.map(
                                    (bestService, bestServiceIndex) => {
                                        return (
                                            <SwiperSlide
                                                key={
                                                    "best-services-" +
                                                    bestServiceIndex
                                                }
                                            >
                                                <ServiceCard
                                                    service={bestService}
                                                />
                                            </SwiperSlide>
                                        );
                                    }
                                )}
                        </Swiper>
                    </div>
                </div>
            </div>
        </>
    );
};

export default ServiceAreaSection;
