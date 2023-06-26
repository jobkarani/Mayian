import { useEffect } from "react";

const CounterAreaSection = () => {
    useEffect(() => {
        // fun fact counter
        $(".counter").countTo();
        $(".counter-box").appear(
            function () {
                $(".counter").countTo();
            },
            {
                accY: -100,
            }
        );
    }, []);
    return (
        <>
            <div className="counter-area pt-40 pb-40">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-3 col-sm-6">
                            <div className="counter-box">
                                <div className="icon">
                                    <i className="fal fa-smile"></i>
                                </div>
                                <span
                                    className="counter"
                                    data-count="+"
                                    data-to="30"
                                    data-speed="3000"
                                >
                                    30
                                </span>
                                <h6 className="title">+ Happy Clients</h6>
                            </div>
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <div className="counter-box">
                                <div className="icon">
                                    <i className="fal fa-users"></i>
                                </div>
                                <span
                                    className="counter"
                                    data-count="+"
                                    data-to="600"
                                    data-speed="3000"
                                >
                                    600
                                </span>
                                <h6 className="title">+ Our Staff</h6>
                            </div>
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <div className="counter-box">
                                <div className="icon">
                                    <i className="fal fa-mug-hot"></i>
                                </div>
                                <span
                                    className="counter"
                                    data-count="+"
                                    data-to="1500"
                                    data-speed="3000"
                                >
                                    1500
                                </span>
                                <h6 className="title">+ Cup Of Coffee</h6>
                            </div>
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <div className="counter-box">
                                <div className="icon">
                                    <i className="fal fa-award"></i>
                                </div>
                                <span
                                    className="counter"
                                    data-count="+"
                                    data-to="50"
                                    data-speed="3000"
                                >
                                    50
                                </span>
                                <h6 className="title">+ Win Awards</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default CounterAreaSection;
