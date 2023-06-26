import React from "react";
import Avatar from "@mui/material/Avatar";
import Stack from "@mui/material/Stack";
import { NavLink } from "react-router-dom";
import AuthRepository from "../../../../repositories/AuthRepository";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

const CustomerSidebar = () => {
    const authState = YEST.useSelector((state) => state.authServiceProvider);
    const [logoutLoading, setlogoutLoading] = YEST.useState(false);

    const logout = () => {
        setlogoutLoading(true);
        AuthRepository.signOut();
    };
    return (
        <div className="customer-sidebar card">
            <div className="card-header text-light d-flex justify-content-between align-items-center customer-sidebar-header py-3">
                <div className="w-100 text-center">
                    <div className="d-flex justify-content-center">
                        <Stack direction="row" spacing={2}>
                            <Avatar
                                alt={authState.authUser?.name}
                                src={authState.authUser?.avatar}
                                sx={{ width: 56, height: 56 }}
                            />
                        </Stack>
                    </div>

                    <div className="mt-2">
                        <h6 className="fs-base mb-0 text-light">
                            {authState.authUser?.name}
                        </h6>
                        <div className="text-accent fs-sm mb-0 text-light">
                            {authState.authUser?.email}
                        </div>
                    </div>
                </div>

                <a
                    className="d-lg-none d-xl-none mt-2 collapsed"
                    href="#customer-account-menu"
                    data-bs-toggle="collapse"
                    aria-expanded="false"
                >
                    <i className="fas fa-bars fs-24 text-light"></i>
                </a>
            </div>
            <div
                className="card-body d-lg-block collapse"
                id="customer-account-menu"
            >
                <ul className="navbar-nav list-unstyled mb-0">
                    <li>
                        <NavLink
                            className={({ isActive }) => {
                                return isActive
                                    ? "nav-link-style d-flex align-items-center p-2 pb-3 fs-md active-link"
                                    : "nav-link-style d-flex align-items-center p-2 pb-3 fs-md";
                            }}
                            end
                            to="/user/dashboard"
                        >
                            <span>
                                <i className="fas fa-home opacity-60 me-2"></i>
                            </span>
                            <span>{YEST.t("dashboard")}</span>
                        </NavLink>
                    </li>
                    <li>
                        <NavLink
                            className={({ isActive }) => {
                                return isActive
                                    ? "nav-link-style d-flex align-items-center p-2 pb-3 fs-md active-link"
                                    : "nav-link-style d-flex align-items-center p-2 pb-3 fs-md";
                            }}
                            end
                            to="/user/bookings"
                        >
                            <span>
                                <i className="fas fa-list-alt opacity-60 me-2"></i>
                            </span>
                            <span>{YEST.t("my_bookings")}</span>
                        </NavLink>
                    </li>
                    <li className="d-none">
                        <NavLink
                            className={({ isActive }) => {
                                return isActive
                                    ? "nav-link-style d-flex align-items-center p-2 pb-3 fs-md active-link"
                                    : "nav-link-style d-flex align-items-center p-2 pb-3 fs-md";
                            }}
                            end
                            to="/user/wishlist"
                        >
                            <span>
                                <i className="fas fa-heart opacity-60 me-2"></i>
                            </span>
                            <span>{YEST.t("my_wishlist")}</span>
                            <span className="fs-sm text-muted ms-auto">3</span>
                        </NavLink>
                    </li>
                    <li>
                        <NavLink
                            className={({ isActive }) => {
                                return isActive
                                    ? "nav-link-style d-flex align-items-center p-2 pb-3 fs-md active-link"
                                    : "nav-link-style d-flex align-items-center p-2 pb-3 fs-md";
                            }}
                            end
                            to="/user/update-profile"
                        >
                            <span>
                                <i className="fas fa-user opacity-60 me-2"></i>
                            </span>
                            <span>{YEST.t("update_profile")}</span>
                        </NavLink>
                    </li>
                    <li>
                        <div
                            className="nav-link-style d-flex align-items-center p-2 pb-3 fs-md cursor-pointer"
                            to="#"
                            onClick={logout}
                        >
                            <span>
                                <i className="fas fa-sign-out-alt opacity-60 me-2"></i>
                            </span>
                            <span className="d-flex align-items-center">
                                <span>{YEST.t("log_out")} </span>
                                {logoutLoading && (
                                    <Loader
                                        type="Oval"
                                        color="#fca702"
                                        height="20px"
                                        width="40px"
                                    />
                                )}
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    );
};

export default CustomerSidebar;
