import React from "react";
import BreadCrumb from "../../inc/BreadCrumb";
import AuthRepository from "../../../repositories/AuthRepository";

import { NavLink } from "react-router-dom";
import CustomerSidebar from "./components/CustomerSidebar";

const Wishlist = () => {
    const authState = YEST.useSelector((state) => state.authServiceProvider);

    const logout = () => {
        // todo:: setCredentials empty
        AuthRepository.signOut();
    };

    return (
        <main className="main">
            <div className="mb-3">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">
                        {YEST.t("my_wishlist")}
                    </h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("wishlist")}</li>
                    </ul>
                </BreadCrumb>
            </div>

            {/* dashboard */}
            <div className="dashboard-area py-60">
                <div className="container">
                    <div className="row">
                        <div className="col-md-3 mb-3 mb-md-0">
                            <CustomerSidebar />
                        </div>
                        {/* contents */}

                        <div className="col-md-9">
                            {/* recent bookings */}
                            <div className="mb-3">
                                <h4>My Wishlist</h4>
                            </div>
                            <div className="">
                                <div className="row">
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <img
                                                    src="/public/frontend/assets/img/room/room-1.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Super Deluxe</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <span className="room-badge">
                                                    Popular
                                                </span>
                                                <img
                                                    src="/public/frontend/assets/img/room/room-2.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Royal Deluxe</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <span className="room-badge">
                                                    Popular
                                                </span>
                                                <img
                                                    src="/public/frontend/assets/img/room/room-3.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Murphy Room</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <img
                                                    src="/public/frontend/assets/img/room/room-4.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Double Room</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <span className="room-badge">
                                                    Popular
                                                </span>
                                                <img
                                                    src="/public/frontend/assets/img/room/room-5.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Luxury King</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-md-6">
                                        <div className="room-item">
                                            <div className="room-img">
                                                <img
                                                    src="/public/frontend/assets/img/room/room-6.jpg"
                                                    alt=""
                                                />
                                                <a
                                                    href="#"
                                                    className="room-wish"
                                                >
                                                    <i className="far fa-heart"></i>
                                                </a>
                                            </div>
                                            <div className="room-content">
                                                <div className="room-title">
                                                    <a href="#">
                                                        <h4>Single Room</h4>
                                                    </a>
                                                    <div className="room-rate">
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                        <i className="fas fa-star"></i>
                                                    </div>
                                                </div>
                                                <div className="room-price">
                                                    <span>
                                                        <strong>$250</strong> /
                                                        Per Night
                                                    </span>
                                                </div>
                                                <div className="room-service">
                                                    <ul>
                                                        <li>
                                                            <i className="far fa-bed"></i>
                                                            3 Beds
                                                        </li>
                                                        <li>
                                                            <i className="far fa-bath"></i>
                                                            2 Baths
                                                        </li>
                                                        <li>
                                                            <i className="far fa-arrows"></i>
                                                            30 M<sup>2</sup>{" "}
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div className="footer-bottom">
                                                    <a
                                                        href="#"
                                                        className="room-btn"
                                                    >
                                                        Book Now{" "}
                                                        <i className="far fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {/* contents */}
                    </div>
                </div>
            </div>
            <div
                className="modal fade"
                id="exampleModal"
                tabIndex="-1"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
            >
                <div className="modal-dialog modal-dialog-centered">
                    <div className="modal-content">
                        <div className="modal-header">
                            <h5 className="modal-title" id="exampleModalLabel">
                                Modal title
                            </h5>
                            <button
                                type="button"
                                className="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                            ></button>
                        </div>
                        <div className="modal-body">...</div>
                        <div className="modal-footer">
                            <button
                                type="button"
                                className="btn btn-secondary"
                                data-bs-dismiss="modal"
                            >
                                Close
                            </button>
                            <button type="button" className="btn btn-primary">
                                Save changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    );
};

export default Wishlist;
