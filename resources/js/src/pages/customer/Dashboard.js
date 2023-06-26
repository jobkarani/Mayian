import React from "react";
import BreadCrumb from "../../inc/BreadCrumb";

import { NavLink } from "react-router-dom";
import CustomerSidebar from "./components/CustomerSidebar";

import BookingList from "./components/BookingList";

const Dashboard = () => {
    const authState = YEST.useSelector((state) => state.authServiceProvider);

    return (
        <main className="main">
            <div className="mb-3">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">{YEST.t("my_profile")}</h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("profile")}</li>
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
                            <div className="row">
                                <div className="col-md-8">
                                    <h5 className="text-center text-md-start fw-bold">
                                        {YEST.t(
                                            "welcome_to_customer_dashboard"
                                        )}
                                    </h5>
                                    <div className="col-md-12">
                                        <div className="fs-14 alert alert-secondary py-1 mb-2 w-100">
                                            <span>
                                                <i className="fas fa-pencil me-2"></i>
                                                {authState.authUser?.name}
                                            </span>
                                        </div>
                                    </div>

                                    <div className="col-md-9">
                                        <div className="fs-14 alert alert-secondary py-1 mb-2 w-100">
                                            <span>
                                                <i className="fas fa-envelope me-2"></i>
                                                {authState.authUser?.email}
                                            </span>
                                        </div>
                                    </div>

                                    <div className="col-md-6">
                                        <div className="fs-14 alert alert-secondary py-1 mb-2 w-100">
                                            <span>
                                                <i className="fas fa-phone rotate-100 me-2"></i>
                                                {authState.authUser?.phone ||
                                                    "+00 000 000 000"}
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {/* recent bookings */}
                            <div className="my-3">
                                <h5 className="text-center text-md-start fw-bold">
                                    {YEST.t("recent_bookings")}
                                </h5>
                            </div>

                            <BookingList recent />
                        </div>
                        {/* contents */}
                    </div>
                </div>
            </div>
        </main>
    );
};

export default Dashboard;
