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

const Login = () => {
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

        const response = await AuthRepository.signIn(formData);

        YEST.dispatch(loginLoading());

        if (response.status === 200) {
            switch (response.data.authStatus) {
                case "invalid_credentials":
                    YEST.notify("error", YEST.t("invalid_login_information"));
                    break;
                case "banned":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                case "verify_email":
                    YEST.notify(
                        "success",
                        YEST.t("please_verify_your_account")
                    );
                    YEST.navigate("/user/verification");
                    break;
                case "only_customer_login":
                    YEST.notify(
                        "error",
                        YEST.t("only_customers_can_login_here")
                    );
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
                    <h2 className="breadcrumb-title">{YEST.t("login")}</h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("login")}</li>
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

                                    <p>{YEST.t("login_with_your_account")}</p>
                                </div>
                                <form onSubmit={handleSubmit}>
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
                                    <div className="d-flex justify-content-between mb-4">
                                        <div className="form-check">
                                            <input
                                                className="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="remember"
                                            />
                                            <label
                                                className="form-check-label"
                                                htmlFor="remember"
                                            >
                                                {YEST.t("remember_me")}
                                            </label>
                                        </div>
                                        <NavLink
                                            to="/user/forgot-password"
                                            className="forgot-pass"
                                        >
                                            {YEST.t("forgot_password")}?
                                        </NavLink>
                                    </div>

                                    {window.yestSetting.generalSettings
                                        .demoMode === "On" && (
                                        <>
                                            <h5 className="text-center mb-4">
                                                Demo Credentials
                                            </h5>
                                            <div className="d-flex justify-content-between mb-4">
                                                <div>
                                                    <span className="fw-bold">
                                                        Email
                                                    </span>
                                                    : customer@example.com
                                                </div>
                                                <div className="ms-2 text-end">
                                                    <span className="fw-bold">
                                                        Password
                                                    </span>
                                                    : 123456
                                                </div>
                                            </div>
                                        </>
                                    )}

                                    {authState.loginLoading ? (
                                        <div className="d-flex align-items-center">
                                            <button
                                                type="button"
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
                                                <i className="far fa-sign-in"></i>{" "}
                                                {YEST.t("login")}
                                            </button>
                                        </div>
                                    )}
                                </form>
                                <div className="login-footer">
                                    <p>
                                        {YEST.t("dont_have_an_account")}{" "}
                                        <NavLink to="/user/registration">
                                            {YEST.t("register")}
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

export default Login;
