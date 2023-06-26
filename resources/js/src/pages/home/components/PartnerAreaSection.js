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

import Zoom from "react-medium-image-zoom";
import "react-medium-image-zoom/dist/styles.css";

const PartnerAreaSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    const PartnerAreaSectionRef = YEST.useRef(null);
    return (
        <>
            <div className="partner-area py-100">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="yest-heading text-center">
                                <span className="yest-title-heading">
                                    {YEST.t("connections")}
                                </span>
                                <h2 className="yest-title">
                                    {YEST.t("our_awesome_partners")}
                                </h2>
                            </div>
                        </div>
                    </div>
                    {/* swiper slider here */}
                    <Swiper
                        ref={PartnerAreaSectionRef}
                        loop={true}
                        autoplay={true}
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
                                slidesPerView: 5,
                                spaceBetween: 12,
                            },
                        }}
                        className={`partner-wrapper partner-slider`}
                    >
                        {appState.partners.map((partner, partnerIndex) => {
                            return (
                                <SwiperSlide key={`feature-${partnerIndex}`}>
                                    <div className="partner-item d-flex justify-content-center">
                                        <Zoom>
                                            <img src={partner.image} />
                                        </Zoom>
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

export default PartnerAreaSection;
