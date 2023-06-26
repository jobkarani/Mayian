import React from "react";
import { NavLink } from "react-router-dom";

const ServiceCard = ({ service }) => {
    return (
        <div className="service-item px-2 px-md-0">
            <div className="service-img">
                <img src={service.thumbnail_image} alt="" className="w-100" />
            </div>
            <div className="service-content">
                <h5>{service.name}</h5>
                <p>{service.short_description}</p>
                <NavLink
                    to={`/services/${service.slug}`}
                    className="yest-btn yest-btn-service"
                >
                    {YEST.t("see_more")} <i className="far fa-arrow-right"></i>
                </NavLink>
            </div>
        </div>
    );
};

export default ServiceCard;
