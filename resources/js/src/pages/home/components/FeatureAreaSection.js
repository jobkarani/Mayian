// import Swiper core and required modules
import SwiperCore, { Autoplay } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

// install Swiper modules
SwiperCore.use([Autoplay]);
const FeatureAreaSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    const FeatureAreaSectionRef = YEST.useRef(null);
    return (
        <>
            <div className="feature-area pt-100">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="yest-heading text-center">
                                <span className="yest-title-heading">
                                    {YEST.t("we_have")}
                                </span>
                                <h2 className="yest-title">
                                    {YEST.t("our_top_features")}
                                </h2>
                            </div>
                        </div>
                    </div>

                    {/* swiper slider here */}
                    <Swiper
                        ref={FeatureAreaSectionRef}
                        loop={true}
                        speed={5000}
                        autoplay={{ delay: 0 }}
                        breakpoints={{
                            0: {
                                slidesPerView: 2,
                                spaceBetween: 9,
                            },
                            600: {
                                slidesPerView: 3,
                                spaceBetween: 9,
                            },
                            1000: {
                                slidesPerView: 4,
                                spaceBetween: 12,
                            },
                            1200: {
                                slidesPerView: 4,
                                spaceBetween: 12,
                            },
                        }}
                        className={`partner-wrapper feature-slider`}
                    >
                        {appState.topFeatures.map((feature, featureIndex) => {
                            return (
                                <SwiperSlide key={`feature-${featureIndex}`}>
                                    <div className="feature-single">
                                        <div className="feature-icon">
                                            <img
                                                src={feature.image}
                                                alt={feature.title}
                                            />
                                        </div>
                                        <div className="feature-info">
                                            <h6>{feature.title}</h6>
                                        </div>
                                    </div>
                                </SwiperSlide>
                            );
                        })}
                    </Swiper>
                </div>
            </div>
        </>
    );
};

export default FeatureAreaSection;
