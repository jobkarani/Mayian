import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import SocialLogin from "./components/SocialLogin";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

// repositories
import AuthRepository from "../../../repositories/AuthRepository";

import {
    loginLoading,
    setCredentials,
    resetCredentials,
    setUserToken,
    setAuthUser,
} from "../../store/slices/authSlice";
const Registration = () => {
    const authState = YEST.useSelector((state) => state.authServiceProvider);
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    // handle change
    const handleChange = (e) => {
        YEST.dispatch(
            setCredentials({
                ...authState.credentials,
                [e.target.name]: e.target.value,
            })
        );
    };

    // attempt login, submit credentials to server
    const handleSubmit = async (e) => {
        e.preventDefault();

        YEST.dispatch(loginLoading());

        let formData = {
            ...authState.credentials,
        };

        if (authState.authUser === null) {
            formData.temp_user_id = authState.tempUserId;
        }

        const response = await AuthRepository.signup(formData);

        YEST.dispatch(loginLoading());

        if (response.status === 200) {
            switch (response.data.authStatus) {
                case "user_exists":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                case "email_required":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                case "password_mismatched":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                case "verify_email":
                    YEST.notify("success", YEST.t(response.data.message));
                    YEST.navigate("/user/verification");
                    break;
                default:
                    YEST.dispatch(setUserToken(response.data.access_token));
                    YEST.dispatch(setAuthUser(response.data.user));
                    YEST.dispatch(resetCredentials());
                    YEST.navigate("/user/dashboard");
            }
        } else {
            YEST.notify("error", YEST.t("something_went_wrong"));
        }
    };

    return (
        <>
            <main className="main">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">
                        {YEST.t("registration")}
                    </h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("registration")}</li>
                    </ul>
                </BreadCrumb>
                <div className="login-area pt-120 pb-100">
                    <div className="container">
                        <div className="col-md-5 mx-auto">
                            <div className="login-form">
                                <div className="login-header">
                                    <img
                                        src={appState.header.logoDark}
                                        alt=""
                                    />

                                    <p>{YEST.t("create_your_account")}</p>
                                </div>
                                <form onSubmit={handleSubmit}>
                                    <div className="form-group">
                                        <label>{YEST.t("full_name")}</label>
                                        <input
                                            type="text"
                                            name="name"
                                            className="form-control"
                                            placeholder={YEST.t("your_name")}
                                            value={authState.credentials.name}
                                            onChange={handleChange}
                                            required
                                        />
                                    </div>
                                    <div className="form-group">
                                        <label>{YEST.t("email_address")}</label>
                                        <input
                                            type="email"
                                            name="email"
                                            className="form-control"
                                            placeholder={YEST.t("your_email")}
                                            value={authState.credentials.email}
                                            onChange={handleChange}
                                            required
                                        />
                                    </div>
                                    <div className="form-group">
                                        <label>{YEST.t("password")}</label>
                                        <input
                                            type="password"
                                            name="password"
                                            className="form-control"
                                            placeholder="★ ★ ★ ★ ★ ★"
                                            value={
                                                authState.credentials.password
                                            }
                                            onChange={handleChange}
                                            required
                                        />
                                    </div>

                                    <div className="form-group">
                                        <label>
                                            {YEST.t("confirm_password")}
                                        </label>
                                        <input
                                            type="password"
                                            name="password_confirmation"
                                            className="form-control"
                                            placeholder="★ ★ ★ ★ ★ ★"
                                            value={
                                                authState.credentials
                                                    .password_confirmation
                                            }
                                            onChange={handleChange}
                                            required
                                        />
                                    </div>

                                    <div className="form-check form-group">
                                        <input
                                            className="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="agree"
                                        />
                                        <label
                                            className="form-check-label"
                                            htmlFor="agree"
                                        >
                                            {YEST.t(
                                                "i_agree_with_the_terms__services"
                                            )}
                                        </label>
                                    </div>

                                    {authState.loginLoading ? (
                                        <div className="d-flex align-items-center">
                                            <button
                                                type="submit"
                                                className="login-btn"
                                            >
                                                <Loader
                                                    type="Oval"
                                                    color="#fff"
                                                    height="20px"
                                                />
                                            </button>
                                        </div>
                                    ) : (
                                        <div className="d-flex align-items-center">
                                            <button
                                                type="submit"
                                                className="login-btn"
                                            >
                                                <i className="far fa-paper-plane"></i>{" "}
                                                {YEST.t("register")}
                                            </button>
                                        </div>
                                    )}
                                </form>
                                <div className="login-footer">
                                    <p>
                                        {YEST.t("already_have_an_account")}{" "}
                                        <NavLink to="/user/login">
                                            {YEST.t("login")}
                                        </NavLink>
                                    </p>
                                    <div className="d-none">
                                        <SocialLogin />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </>
    );
};

export default Registration;
