import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

// repositories
import AuthRepository from "../../../repositories/AuthRepository";

import { loginLoading, setCredentials } from "../../store/slices/authSlice";

const ForgotPassword = () => {
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

    // submit credentials to server
    const handleSubmit = async (e) => {
        e.preventDefault();

        YEST.dispatch(loginLoading());

        let formData = {
            ...authState.credentials,
        };

        const response = await AuthRepository.sendPasswordResetCode(formData);

        YEST.dispatch(loginLoading());

        if (response.status === 200) {
            switch (response.data.authStatus) {
                case "user_not_found":
                    YEST.notify("error", YEST.t(response.data.message));
                    break;
                default:
                    YEST.notify("success", YEST.t(response.data.message));
                    YEST.navigate("/user/set-new-password");
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
                        {YEST.t("forgot_password")}
                    </h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <NavLink to="/">{YEST.t("home")}</NavLink>
                        </li>
                        <li className="active">{YEST.t("forgot_password")}</li>
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

                                    <p>{YEST.t("reset_your_account")}</p>
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
                                                <i className="far fa-key"></i>{" "}
                                                {YEST.t("send_reset_code")}
                                            </button>
                                        </div>
                                    )}
                                </form>
                                <div className="login-footer">
                                    <p>
                                        {YEST.t("back_to_login")}{" "}
                                        <NavLink to="/user/login">
                                            {YEST.t("login")}
                                        </NavLink>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </>
    );
};

export default ForgotPassword;
