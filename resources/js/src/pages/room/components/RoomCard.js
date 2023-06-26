import React from "react";
import { NavLink } from "react-router-dom";
import Rating from "@mui/material/Rating";
import Helper from "../../../helpers/Helper";

const RoomCard = ({ cottage }) => {
    if (!cottage) {
        return "";
    }

    return (
        <div className="room-item">
            <div className="room-img">
                {/* for update version */}
                <span className="room-badge d-none">Popular</span>
                {/* for update version */}
                <img src={cottage.thumbnail_image} alt="" className="w-100" />

                {/* todo:: add to wishlist */}
                <a href="#" className="room-wish d-none">
                    <i className="far fa-heart"></i>
                </a>
            </div>
            <div className="room-content">
                <div className="room-title mt-2">
                    <NavLink to={`/cottages/${cottage.slug}`}>
                        <h4 className="">{cottage.name}</h4>
                    </NavLink>
                </div>

                <div className="room-rate">
                    <Rating value={cottage.rating} readOnly />
                </div>

                <div className="room-service">
                    <ul>
                        <li>
                            <i className="far fa-home"></i>
                            {cottage.num_of_rooms} {YEST.t("rooms")}
                        </li>
                        <li>
                            <i className="far fa-bed"></i>
                            {cottage.num_of_beds} {YEST.t("beds")}
                        </li>
                        <li>
                            <i className="far fa-arrows"></i>
                            {cottage.size}
                        </li>
                    </ul>
                </div>

                <div className="d-flex justify-content-between align-items-center">
                    <div className="room-price">
                        <span>
                            <strong>{Helper.formatPrice(cottage.price)}</strong>{" "}
                            / {YEST.t("night")}
                        </span>
                    </div>
                    <div className="footer-bottom">
                        <NavLink
                            to={`/cottages/${cottage.slug}`}
                            className="fw-500"
                        >
                            {YEST.t("book_now")}{" "}
                            <i className="far fa-arrow-right"></i>
                        </NavLink>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default RoomCard;
