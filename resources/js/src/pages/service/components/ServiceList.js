import React from "react";

import DataRepository from "../../../../repositories/DataRepository";

import {
    services,
    nextServices,
    nextLoading,
} from "../../../store/slices/dataSlice";
import ServiceCardLoading from "../../service/components/ServiceCardLoading";
import ServiceCard from "../../service/components/ServiceCard";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

const ServiceList = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const [loading, setloading] = YEST.useState(true);

    // get all services
    YEST.useEffect(async () => {
        let response = await DataRepository.getServices();
        YEST.dispatch(
            services({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        setloading(false);
    }, []);

    // get next services
    const getNextServices = async () => {
        YEST.dispatch(nextLoading());
        let response = await DataRepository.getNextServices(
            dataState.nextServicesLink
        );
        YEST.dispatch(
            nextServices({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        YEST.dispatch(nextLoading());
    };

    return (
        <div className="service-area pt-120 pb-100">
            <div className="container">
                <div className="row">
                    {loading &&
                        [...Array(12)].map((x, i) => (
                            <div
                                key={"services-" + i}
                                className="col-md-6 col-lg-4 col-xl-3"
                            >
                                <ServiceCardLoading />
                            </div>
                        ))}

                    {!loading &&
                        dataState.services.map((service, serviceIndex) => {
                            return (
                                <div
                                    key={"services-" + serviceIndex}
                                    className="col-md-6 col-lg-4 col-xl-3"
                                >
                                    <ServiceCard service={service} />
                                </div>
                            );
                        })}
                </div>
                {dataState.nextServicesLink !== null && (
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
                                onClick={getNextServices}
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

export default ServiceList;
