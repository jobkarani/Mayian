import React from "react";
import AuthRepository from "../../repositories/AuthRepository";
// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

const SubscribeArea = () => {
    const [email, setemail] = YEST.useState("");
    const [loading, setloading] = YEST.useState(false);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setloading(true);
        let response = await AuthRepository.subscribe({ email: email });
        if (response.data.success) {
            YEST.notify("success", YEST.t(response.data.message));
        }
        setloading(false);
    };
    return (
        <>
            <div className="subscribe-area pt-60 pb-60">
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-md-12 col-lg-6">
                            <div className="subscribe-content">
                                <h4>{YEST.t("subscribe_to_our_newsletter")}</h4>
                                <p>
                                    {YEST.t(
                                        "you_will_get_our_latest_updates__discount_information_we_do_not_send_spam_emails"
                                    )}
                                </p>
                            </div>
                        </div>
                        <div className="col-md-12 col-lg-6">
                            <div className="subscribe-form">
                                <form onSubmit={handleSubmit}>
                                    <div className="form-group">
                                        <input
                                            className="form-control"
                                            type="email"
                                            name="email"
                                            placeholder={YEST.t("your_email")}
                                            onChange={(e) =>
                                                setemail(e.target.value)
                                            }
                                            required
                                        />
                                    </div>

                                    {loading ? (
                                        <button type="submit" className="me-1">
                                            <Loader
                                                type="Oval"
                                                color="#fff"
                                                height="20px"
                                                width="50px"
                                            />
                                        </button>
                                    ) : (
                                        <button type="submit" className="me-1">
                                            <i className="far fa-paper-plane me-0"></i>
                                        </button>
                                    )}
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default SubscribeArea;
