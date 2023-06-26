import { useEffect } from "react";

const AboutAreaSection = () => {
    useEffect(() => {
        // nice select
    }, []);

    return (
        <>
            <div className="about-area pb-120 ">
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-lg-6">
                            <div className="about-left">
                                <div className="about-img">
                                    <img
                                        className="about-img-1"
                                        src="/public/frontend/assets/img/about/1.jpg"
                                        alt=""
                                    />
                                    <img
                                        className="about-img-2"
                                        src="/public/frontend/assets/img/about/2.jpg"
                                        alt=""
                                    />
                                </div>
                            </div>
                        </div>
                        <div className="col-lg-6">
                            <div className="about-right">
                                <div className="site-header">
                                    <span className="yest-title-heading">
                                        About Us
                                    </span>
                                    <h2 className="yest-title">
                                        We Provide Best Place To Enjoy Your Time
                                    </h2>
                                </div>
                                <p className="about-text">
                                    There are many variations of passages of
                                    Lorem Ipsum available, but the majority have
                                    suffered alteration in some form, by
                                    injected humour, or randomised words which
                                    don't look even.
                                </p>
                                <div className="about-list-wrapper">
                                    <ul className="about-list list-unstyled">
                                        <li>
                                            <div className="icon">
                                                <span className="far fa-check-circle"></span>
                                            </div>
                                            <div className="text">
                                                <p>
                                                    Take a look at our round up
                                                    of the best shows
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div className="icon">
                                                <span className="far fa-check-circle"></span>
                                            </div>
                                            <div className="text">
                                                <p>
                                                    It has survived not only
                                                    five centuries
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div className="icon">
                                                <span className="far fa-check-circle"></span>
                                            </div>
                                            <div className="text">
                                                <p>
                                                    Lorem Ipsum has been the
                                                    ndustry standard dummy text
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default AboutAreaSection;
