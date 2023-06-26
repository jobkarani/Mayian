// import Swiper core and required modules
import SwiperCore, { Parallax, Autoplay, Navigation } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

// install Swiper modules
SwiperCore.use([Autoplay, Parallax]);

const HeroSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    const swiperRef = YEST.useRef(null);

    const handlePreviousPress = () => {
        swiperRef.current.swiper.slidePrev();
    };

    const handleNextPress = () => {
        swiperRef.current.swiper.slideNext();
    };

    YEST.useEffect(() => {
        $(".popup-youtube, .popup-vimeo").magnificPopup({
            type: "iframe",
            mainClass: "mfp-fade",
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false,
        });
    }, []);

    return (
        <>
            <Swiper
                ref={swiperRef}
                modules={[Parallax]}
                loop={true}
                speed={1800}
                className={`hero-section hero-slider`}
            >
                {/* swiper slider here */}
                <div className="slider-nav" onClick={handlePreviousPress}>
                    <div className="slider-prev">
                        <i className="far fa-arrow-left"></i>
                    </div>
                    <div className="slider-next" onClick={handleNextPress}>
                        <i className="far fa-arrow-right"></i>
                    </div>
                </div>
                {appState.sliders.map((slider, sliderIndex) => {
                    return (
                        <SwiperSlide key={`hero-slider-${sliderIndex}`}>
                            <div
                                className="hero-single"
                                style={{
                                    backgroundImage: `url(${slider.image})`,
                                }}
                            >
                                <div className="container">
                                    <div className="row align-items-center justify-content-center">
                                        <div className="col-md-8 mx-auto text-center">
                                            <div className="hero-content">
                                                <h1 className="hero-title">
                                                    {slider.title}
                                                </h1>
                                                <div className="hero-btn">
                                                    <a
                                                        className="play-btn popup-youtube"
                                                        href={slider.link}
                                                    >
                                                        <i className="fas fa-play"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </SwiperSlide>
                    );
                })}
            </Swiper>
        </>
    );
};

export default HeroSection;
