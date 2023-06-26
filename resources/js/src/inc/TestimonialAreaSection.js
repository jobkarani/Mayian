import { useRef } from "react";

// import Swiper core and required modules
import SwiperCore, { Autoplay } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

import Rating from "@mui/material/Rating";

// install Swiper modules
SwiperCore.use([Autoplay]);

const TestimonialAreaSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    const TestimonialAreaSectionRef = useRef(null);
    return (
        <>
            <div className="testimonial-area testimonial-bg py-100 mt-100">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="yest-heading text-center">
                                <span className="yest-title-heading">
                                    {YEST.t("appreciations")}
                                </span>
                                <h2 className="yest-title text-white">
                                    {YEST.t("what_client_says")}
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div className="testimonial-slider">
                        {/* swiper slider here */}
                        <Swiper
                            ref={TestimonialAreaSectionRef}
                            loop={true}
                            autoplay={true}
                            breakpoints={{
                                0: {
                                    slidesPerView: 1,
                                    spaceBetween: 10,
                                },
                                1000: {
                                    slidesPerView: 2,
                                    spaceBetween: 15,
                                },
                            }}
                            className={`partner-wrapper partner-slider`}
                        >
                            {appState.testimonials.map(
                                (testimonial, testimonialIndex) => {
                                    return (
                                        <SwiperSlide
                                            key={`testimonial-${testimonialIndex}`}
                                        >
                                            <div className="testimonial-single">
                                                <div className="testimonial-quote">
                                                    <span className="testimonial-quote-icon">
                                                        <i className="fal fa-quote-right"></i>
                                                    </span>
                                                    <div className="testimonial-rate">
                                                        <Rating
                                                            value={
                                                                testimonial.rating
                                                            }
                                                            readOnly
                                                        />
                                                    </div>
                                                    <p>{testimonial.remark}</p>
                                                </div>
                                                <div className="testimonial-content">
                                                    <div className="testimonial-author-img">
                                                        <img
                                                            src={
                                                                testimonial.image
                                                            }
                                                            alt=""
                                                            className="size-60px"
                                                        />
                                                    </div>
                                                    <div className="testimonial-author-info">
                                                        <h6 className="mb-0">
                                                            {testimonial.name}
                                                        </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </SwiperSlide>
                                    );
                                }
                            )}
                        </Swiper>
                    </div>
                </div>
            </div>
        </>
    );
};

export default TestimonialAreaSection;
