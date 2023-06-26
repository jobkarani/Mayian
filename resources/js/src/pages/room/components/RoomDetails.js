import DOMPurify from "dompurify";
import Rating from "@mui/material/Rating";
import DatePicker from "react-datepicker";

import "react-datepicker/dist/react-datepicker.css";

// import Swiper core and required modules
import SwiperCore, { Autoplay, Navigation } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import { bestCottages } from "../../../store/slices/dataSlice";
import DataRepository from "../../../../repositories/DataRepository";
import RoomCard from "./RoomCard";
import Helper from "../../../helpers/Helper";

import { Select } from "../../../helpers/FixRequiredSelect";

import {
    dateRange,
    selectedAdultIndex,
    selectedChildIndex,
} from "../../../store/slices/appSlice";

// install Swiper modules
SwiperCore.use([Autoplay, Navigation]);

const RoomDetails = ({
    cottage,
    availability,
    getCottageDetails,
    loaded,
    setloaded,
    setbookingUi,
    bookable,
    setbookable,
}) => {
    const [availabilityLoading, setavailabilityLoading] = YEST.useState(false);

    const RoomDetailsRef = YEST.useRef(null);

    if (cottage === undefined || cottage === null) {
        return "";
    }

    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const [startDate, endDate] = appState.dateRange;

    YEST.useEffect(async () => {
        if (dataState.bestCottages.length === 0) {
            let response = await DataRepository.getBestCottages();
            YEST.dispatch(bestCottages(response.data.data));
        }
        setloaded(true);

        window.$(".popup-youtube, .popup-vimeo, .popup-gmaps").magnificPopup({
            type: "iframe",
            mainClass: "mfp-fade",
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false,
        });
    }, []);

    YEST.useEffect(() => {
        if (loaded && !availability) {
            YEST.notify(
                "error",
                YEST.t("this_cottage_is_unavailable_in_selected_dates")
            );
        }
        if (availability) {
            setbookable(true);
        } else {
            setbookable(false);
        }
    }, [availability]);

    YEST.useEffect(() => {}, [bookable]);

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    const checkAvailability = async (e) => {
        setavailabilityLoading(true);
        e.preventDefault();
        getCottageDetails();
        setTimeout(() => {
            setavailabilityLoading(false);
        }, 300);
    };
    return (
        <>
            <div className="row">
                <div className="col-lg-8 mb-5 mb-md-0">
                    <div className="room-details">
                        <div className="room-details-img">
                            {/* swiper slider here */}
                            <Swiper
                                ref={RoomDetailsRef}
                                loop={true}
                                navigation={true}
                                autoplay={true}
                                slidesPerView={1}
                                className={`room-details-slider swiper-nav-round`}
                            >
                                {cottage.gallery_images.map(
                                    (gallery, index) => {
                                        return (
                                            <SwiperSlide
                                                key={"room-gallery-" + index}
                                            >
                                                <div className="room-details-slider-single">
                                                    <img src={gallery} alt="" />
                                                </div>
                                            </SwiperSlide>
                                        );
                                    }
                                )}
                            </Swiper>
                        </div>
                        <div className="room-details-content">
                            <div className="room-details-info">
                                <div>
                                    <h4>{cottage.name}</h4>
                                </div>
                                <div className="room-details-meta">
                                    <ul>
                                        <li>
                                            <i className="far fa-home"></i>
                                            {cottage.num_of_rooms}{" "}
                                            {YEST.t("rooms")}
                                        </li>
                                        <li>
                                            <i className="far fa-bed"></i>
                                            {cottage.num_of_beds}{" "}
                                            {YEST.t("beds")}
                                        </li>
                                        <li>
                                            <i className="far fa-arrows"></i>
                                            {cottage.size}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div className="room-details-price-wrapper">
                                <div className="room-details-price">
                                    <span>
                                        <strong>
                                            {Helper.formatPrice(cottage.price)}
                                        </strong>{" "}
                                        / {YEST.t("night")}
                                    </span>
                                </div>
                                <div className="room-details-rate">
                                    <Rating value={cottage.rating} readOnly />
                                </div>
                            </div>
                        </div>
                        <div className="room-description">
                            <div className="d-flex justify-content-between mb-2">
                                <h4>{YEST.t("room_description")}</h4>
                                {cottage.video_link && (
                                    <div>
                                        <a
                                            className="details-play-btn popup-youtube"
                                            href={cottage.video_link}
                                        >
                                            <i className="fas fa-play ms-1"></i>
                                        </a>
                                    </div>
                                )}
                            </div>
                            <div
                                dangerouslySetInnerHTML={sanitizedData(
                                    cottage.description
                                )}
                            ></div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-4">
                    <div className="room-sidebar">
                        <div className="search-area">
                            <div className="search-form-wrapper">
                                <h4>{YEST.t("check_availability")}</h4>
                                <form onSubmit={checkAvailability}>
                                    <div className="row align-items-end">
                                        <div className="col-12 search-input">
                                            <div className="form-group">
                                                <label>
                                                    {YEST.t("check_in")} -{" "}
                                                    {YEST.t("out")}
                                                </label>
                                                <DatePicker
                                                    selectsRange={true}
                                                    startDate={startDate}
                                                    endDate={endDate}
                                                    onChange={(date) => {
                                                        YEST.dispatch(
                                                            dateRange(date)
                                                        );

                                                        setbookable(false);
                                                    }}
                                                    minDate={new Date()}
                                                    className="form-control"
                                                />
                                                <div>
                                                    <i className="far fa-calendar-alt"></i>
                                                </div>
                                            </div>
                                        </div>

                                        <div className="col-12 search-input">
                                            <div className="form-group">
                                                <label>
                                                    {YEST.t("adults")}
                                                </label>
                                                <Select
                                                    classNamePrefix="react-select-style"
                                                    options={appState.adults}
                                                    onChange={(data) => {
                                                        YEST.dispatch(
                                                            selectedAdultIndex(
                                                                data
                                                            )
                                                        );
                                                        setbookable(false);
                                                    }}
                                                    placeholder={YEST.t(
                                                        "adults"
                                                    )}
                                                    defaultValue={
                                                        appState.adults[
                                                            appState
                                                                .selectedAdultIndex
                                                        ]
                                                    }
                                                />
                                            </div>
                                        </div>
                                        <div className="col-12 search-input">
                                            <div className="form-group">
                                                <label>
                                                    {YEST.t("children")}
                                                </label>
                                                <Select
                                                    classNamePrefix="react-select-style"
                                                    options={appState.children}
                                                    onChange={(data) => {
                                                        YEST.dispatch(
                                                            selectedChildIndex(
                                                                data
                                                            )
                                                        );
                                                        setbookable(false);
                                                    }}
                                                    placeholder={YEST.t(
                                                        "children"
                                                    )}
                                                    defaultValue={
                                                        appState.children[
                                                            appState
                                                                .selectedChildIndex
                                                        ]
                                                    }
                                                />
                                            </div>
                                        </div>
                                        <div className="col-12 search-input mt-3">
                                            {availabilityLoading ? (
                                                <button
                                                    type="button"
                                                    className="search-btn"
                                                >
                                                    <Loader
                                                        type="Oval"
                                                        color="#fff"
                                                        height="20px"
                                                    />
                                                </button>
                                            ) : (
                                                <button
                                                    type="submit"
                                                    className="search-btn"
                                                >
                                                    {" "}
                                                    <i className="far fa-search"></i>
                                                    {YEST.t(
                                                        "check_availability"
                                                    )}
                                                </button>
                                            )}
                                            {!availability && (
                                                <small className="text-danger">
                                                    {YEST.t(
                                                        "this_cottage_is_unavailable_in_selected_dates"
                                                    )}
                                                </small>
                                            )}
                                        </div>

                                        {!availabilityLoading && bookable && (
                                            <div className="col-12 search-input mt-2">
                                                <small className="text-success">
                                                    {YEST.t(
                                                        "this_cottage_is_available_for_booking"
                                                    )}
                                                </small>
                                                <button
                                                    type="button"
                                                    className="search-btn bg-success"
                                                    onClick={() => {
                                                        if (
                                                            Helper.isLoggedIn()
                                                        ) {
                                                            setbookingUi(true);
                                                            window.scrollTo(
                                                                0,
                                                                305
                                                            );
                                                        } else {
                                                            YEST.notify(
                                                                "error",
                                                                YEST.t(
                                                                    "please_login_to_continue"
                                                                )
                                                            );
                                                            YEST.navigate(
                                                                "/user/login"
                                                            );
                                                        }
                                                    }}
                                                >
                                                    {YEST.t("book_now")}{" "}
                                                    <i className="fas fa-arrow-right ms-1"></i>
                                                </button>
                                            </div>
                                        )}
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {/* other best cottages */}
            <div className="row pt-80">
                <div className="col-lg-6 mx-auto mb-3">
                    <div className="yest-heading text-center mb-0">
                        <span className="yest-title-heading">
                            {YEST.t("other_cottages")}
                        </span>
                        <h2 className="yest-title">
                            {YEST.t("our_other_cottages")}
                        </h2>
                    </div>
                </div>
            </div>
            <div className="row mt-0 g-4">
                {dataState.bestCottages.map((bestCottage, bestCottageIndex) => {
                    return (
                        <div
                            className="col-md-6 col-lg-4"
                            key={`other-${bestCottageIndex}`}
                        >
                            <RoomCard cottage={bestCottage} />
                        </div>
                    );
                })}
            </div>
        </>
    );
};

export default RoomDetails;
