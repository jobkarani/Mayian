import React from "react";
import BreadCrumb from "../../inc/BreadCrumb";

import { NavLink } from "react-router-dom";
import CustomerSidebar from "./components/CustomerSidebar";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import AuthRepository from "../../../repositories/AuthRepository";
import { setAuthUser } from "../../store/slices/authSlice";

const UpdateProfile = () => {
    const authState = YEST.useSelector((state) => state.authServiceProvider);

    const [credentials, setCredentials] = YEST.useState({
        name: authState.authUser.name || "",
        email: authState.authUser.email || "",
        phone: authState.authUser.phone || "",
        password: "",
        password_confirmation: "",
        avatar: "",
        infoLoading: false,
        passwordLoading: false,
        avatarLoading: false,
    });

    // on change event of input
    const handleChange = (e) => {
        setCredentials({
            ...credentials,
            [e.target.name]:
                e.target.name === "avatar" ? e.target.files[0] : e.target.value,
        });
    };

    // update info
    const handleSubmitInfo = async (e) => {
        e.preventDefault();
        setCredentials({
            ...credentials,
            infoLoading: true,
        });
        const response = await AuthRepository.updateInfo(credentials);
        if (response.data.success === true) {
            if (response.data.updateStatus === "successful") {
                setCredentials({
                    ...credentials,
                    name: response.data.user.name,
                    email: response.data.user.email,
                    phone: response.data.user.phone,
                });
                YEST.dispatch(setAuthUser(response.data.user));
                YEST.notify("success", YEST.t(response.data.message));
            } else {
                YEST.notify("error", YEST.t(response.data.message));
            }
        } else {
            YEST.notify("error", YEST.t("something_went_wrong"));
        }
        setCredentials({
            ...credentials,
            infoLoading: false,
        });
    };

    // update password
    const handleSubmitPassword = async (e) => {
        e.preventDefault();
        setCredentials({
            ...credentials,
            passwordLoading: true,
        });
        const response = await AuthRepository.updatePassword(credentials);
        if (response.data.success === true) {
            if (response.data.updateStatus === "successful") {
                setCredentials({
                    ...credentials,
                    password: "",
                    password_confirmation: "",
                });
                YEST.notify("success", YEST.t(response.data.message));
            } else {
                YEST.notify("error", YEST.t(response.data.message));
            }
        } else {
            YEST.notify("error", YEST.t("something_went_wrong"));
        }
        setCredentials({
            ...credentials,
            passwordLoading: false,
        });
    };

    // update avatar
    const handleSubmitAvatar = async (e) => {
        e.preventDefault();
        setCredentials({
            ...credentials,
            avatarLoading: true,
        });
        let formData = new FormData();
        formData.append("avatar", credentials.avatar);
        const response = await AuthRepository.updateAvatar(formData);
        if (response.data.success === true) {
            if (response.data.updateStatus === "successful") {
                YEST.dispatch(setAuthUser(response.data.user));
                YEST.notify("success", YEST.t(response.data.message));
            } else {
                YEST.notify("error", YEST.t(response.data.message));
            }
        } else {
            YEST.notify("error", YEST.t("something_went_wrong"));
        }
        setCredentials({
            ...credentials,
            avatarLoading: false,
        });
    };

    return (
        <main className="main">
            <div className="mb-3">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">
                        {YEST.t("update_profile")}
                    </h2>
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

                        {/* Info */}
                        <div className="col-md-9">
                            <div className="row">
                                <div className="col-md-8">
                                    <h5 className="text-center text-md-start fw-bold">
                                        {YEST.t("update_profile")}
                                    </h5>
                                    <form onSubmit={handleSubmitInfo}>
                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="name"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t("your_name")}
                                                </label>
                                                <input
                                                    type="text"
                                                    className="form-control fs-14 py-2"
                                                    id="name"
                                                    name="name"
                                                    placeholder={YEST.t(
                                                        "enter_name"
                                                    )}
                                                    value={credentials.name}
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </div>
                                        <div className="col-md-10 mt-2">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="email"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t("your_email")}
                                                </label>
                                                <input
                                                    type="email"
                                                    className="form-control fs-14 py-2"
                                                    id="email"
                                                    name="email"
                                                    placeholder={YEST.t(
                                                        "enter_email"
                                                    )}
                                                    value={credentials.email}
                                                    onChange={handleChange}
                                                    required
                                                    disabled
                                                />
                                            </div>
                                        </div>
                                        <div className="col-md-8 mt-2">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="phone"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t("your_phone")}
                                                </label>
                                                <input
                                                    type="phone"
                                                    className="form-control fs-14 py-2"
                                                    id="phone"
                                                    name="phone"
                                                    placeholder={YEST.t(
                                                        "enter_phone_no"
                                                    )}
                                                    value={credentials.phone}
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </div>

                                        {credentials.infoLoading ? (
                                            <button
                                                type="button"
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                            >
                                                <Loader
                                                    type="Oval"
                                                    color="#fff"
                                                    height="20px"
                                                />
                                            </button>
                                        ) : (
                                            <button
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                                type="submit"
                                            >
                                                {YEST.t("update")}
                                            </button>
                                        )}
                                    </form>
                                </div>
                            </div>

                            {/* password */}
                            <div className="row mt-4">
                                <div className="col-md-8">
                                    <h5 className="fw-bold text-center text-md-start">
                                        {YEST.t("update_password")}
                                    </h5>
                                    <form onSubmit={handleSubmitPassword}>
                                        <div className="col-md-8 mt-2">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="password"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t("your_password")}
                                                </label>
                                                <input
                                                    type="password"
                                                    className="form-control fs-14 py-2"
                                                    id="password"
                                                    name="password"
                                                    placeholder="* * * * *"
                                                    value={credentials.password}
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </div>
                                        <div className="col-md-8 mt-2">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="password_confirmation"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t(
                                                        "pasword_confirmation"
                                                    )}
                                                </label>
                                                <input
                                                    type="password"
                                                    className="form-control fs-14 py-2"
                                                    id="password_confirmation"
                                                    placeholder="* * * * *"
                                                    name="password_confirmation"
                                                    value={
                                                        credentials.password_confirmation
                                                    }
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </div>
                                        {credentials.passwordLoading ? (
                                            <button
                                                type="button"
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                            >
                                                <Loader
                                                    type="Oval"
                                                    color="#fff"
                                                    height="20px"
                                                />
                                            </button>
                                        ) : (
                                            <button
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                                type="submit"
                                            >
                                                {YEST.t("update")}
                                            </button>
                                        )}
                                    </form>
                                </div>
                            </div>

                            {/* avatar */}
                            <div className="row mt-4">
                                <div className="col-md-8">
                                    <h5 className="fw-bold text-center text-md-start">
                                        {YEST.t("update_avatar")}
                                    </h5>

                                    <form onSubmit={handleSubmitAvatar}>
                                        <div className="col-md-8 mt-2">
                                            <div className="form-group">
                                                <label
                                                    htmlFor="avatar"
                                                    className="mb-1 fs-14"
                                                >
                                                    {YEST.t("avatar")}
                                                </label>
                                                <input
                                                    type="file"
                                                    className="form-control fs-14 py-2"
                                                    id="avatar"
                                                    name="avatar"
                                                    required
                                                    onChange={handleChange}
                                                />
                                            </div>
                                        </div>

                                        {credentials.avatarLoading ? (
                                            <button
                                                type="button"
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                            >
                                                <Loader
                                                    type="Oval"
                                                    color="#fff"
                                                    height="20px"
                                                />
                                            </button>
                                        ) : (
                                            <button
                                                className="btn yest-btn mt-4 rounded px-3 py-2"
                                                type="submit"
                                            >
                                                {YEST.t("update")}
                                            </button>
                                        )}
                                    </form>
                                </div>
                            </div>
                        </div>
                        {/* contents */}
                    </div>
                </div>
            </div>
        </main>
    );
};

export default UpdateProfile;
