import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";

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

const Verification = () => {
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

    // attempt verification, submit credentials to server
    const handleSubmit = async (e) => {
        e.preventDefault();

        YEST.dispatch(loginLoading());

        let formData = {
            ...authState.credentials,
        };

        if (authState.authUser === null) {
            formData.temp_user_id = authState.tempUserId;
        }

        const response = await AuthRepository.verify(formData);

        YEST.dispatch(loginLoading());

        if (response.status === 200) {
            switch (response.data.authStatus) {
                case "user_not_found":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                case "code_not_matched":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                default:
                    YEST.dispatch(setUserToken(response.data.access_token));
                    YEST.dispatch(setAuthUser(response.data.user));
                    YEST.notify(
                        "success",
                        YEST.t("verification_has_been_successful")
                    );
                    YEST.dispatch(resetCredentials());
                    YEST.navigate("/user/dashboard");
            }
        } else {
            YEST.notify("error", YEST.t("something_went_wrong"));
        }
    };
    // resend verification code
    const resendCode = async (e) => {
        e.preventDefault();

        YEST.dispatch(loginLoading());

        let formData = {
            ...authState.credentials,
        };

        const response = await AuthRepository.resendCode(formData);

        YEST.dispatch(loginLoading());

        if (response.status === 200) {
            switch (response.data.authStatus) {
                case "user_not_found":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                default:
                    YEST.notify("success", YEST.t(response.data.message));
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
                        {YEST.t("verification")}
                    </h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("verification")}</li>
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

                                    <p>{YEST.t("verify_your_account")}</p>
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
                                        <label>
                                            {YEST.t("verification_code")}
                                        </label>
                                        <input
                                            type="text"
                                            name="code"
                                            className="form-control"
                                            placeholder={YEST.t(
                                                "verification_code"
                                            )}
                                            value={authState.credentials.code}
                                            onChange={handleChange}
                                            required
                                        />
                                    </div>

                                    <div className="d-flex justify-content-between mb-4 px-2">
                                        <div>
                                            <label>
                                                {YEST.t("did_not_get_a_code")}
                                            </label>
                                        </div>

                                        {!authState.loginLoading && (
                                            <span
                                                type="button"
                                                className="forgot-pass"
                                                onClick={resendCode}
                                            >
                                                {YEST.t("resend")}
                                            </span>
                                        )}
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
                                                <i className="far fa-check"></i>{" "}
                                                {YEST.t("verify")}
                                            </button>
                                        </div>
                                    )}
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </>
    );
};

export default Verification;
