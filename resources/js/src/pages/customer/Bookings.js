import React from "react";
import BreadCrumb from "../../inc/BreadCrumb";

import { NavLink } from "react-router-dom";
import CustomerSidebar from "./components/CustomerSidebar";
import BookingList from "./components/BookingList";

const Bookings = () => {
    return (
        <main className="main">
            <div className="mb-3">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">
                        {YEST.t("my_bookings")}
                    </h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("bookings")}</li>
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
                                <h5 className="fw-bold text-center text-md-start">
                                    {YEST.t("my_bookings")}
                                </h5>
                            </div>
                            <BookingList />
                        </div>
                        {/* contents */}
                    </div>
                </div>
            </div>
        </main>
    );
};

export default Bookings;
