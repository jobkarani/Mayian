import Rating from "@mui/material/Rating";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import DataRepository from "../../../../repositories/DataRepository";
import Helper from "../../../helpers/Helper";

const RoomBooking = ({
    cottage,
    setbookingUi,
    stayingNights,
    setbookingSuccessUi,
}) => {
    if (cottage === undefined || cottage === null) {
        return "";
    }

    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const authState = YEST.useSelector((state) => state.authServiceProvider);

    const [startDate, endDate] = appState.dateRange;

    const [bookingData, setbookingData] = YEST.useState({
        name: authState.authUser.name || "",
        email: authState.authUser.email || "",
        phone: authState.authUser.phone || "",
        cottageId: cottage.id,
        checkOut: startDate,
        checkIn: endDate,
        adults: appState.adults[appState.selectedAdultIndex].value,
        children: appState.children[appState.selectedChildIndex].value,
        stayingNights: stayingNights,
        cottageId: cottage.id,
        address: "",
        additionalInfo: "",
        loading: false,
    });

    // handle booking form data
    const handleBookingData = (e) => {
        setbookingData({
            ...bookingData,
            [e.target.name]: e.target.value,
        });
    };

    // handle submit
    const handleSubmit = async (e) => {
        e.preventDefault();
        setbookingData({
            ...bookingData,
            loading: true,
        });
        let formData = {
            ...bookingData,
        };
        let response = await DataRepository.bookCottage(formData);

        if (response.data.success == true) {
            setbookingSuccessUi(true);
            setbookingUi(false);
            window.scrollTo(0, 305);
        } else {
            YEST.notify("error", YEST.t(response.data.message));
        }

        setTimeout(() => {
            setbookingData({
                ...bookingData,
                loading: false,
            });
        }, 300);
    };
    return (
        <form onSubmit={handleSubmit}>
            <div className="row">
                <div className="col-lg-8">
                    <div className="booking-widget">
                        <h4 className="booking-widget-title">
                            {YEST.t("your_details")}
                        </h4>
                        <div className="booking-form">
                            <div className="row">
                                <div className="col-lg-12">
                                    <div className="form-group">
                                        <label>{YEST.t("name")}</label>
                                        <input
                                            type="text"
                                            className="form-control"
                                            placeholder={YEST.t("your_name")}
                                            value={bookingData.name}
                                            disabled
                                        />
                                    </div>
                                </div>
                                <div className="col-lg-12">
                                    <div className="form-group">
                                        <label>{YEST.t("email")}</label>
                                        <input
                                            type="email"
                                            className="form-control"
                                            placeholder={YEST.t("your_email")}
                                            value={bookingData.email}
                                            disabled
                                            required
                                        />
                                    </div>
                                </div>
                                <div className="col-lg-12">
                                    <div className="form-group">
                                        <label>{YEST.t("phone")}</label>
                                        <input
                                            type="text"
                                            name="phone"
                                            className="form-control"
                                            placeholder={YEST.t("your_phone")}
                                            value={bookingData.phone}
                                            onChange={handleBookingData}
                                            required
                                        />
                                    </div>
                                </div>
                                <div className="col-lg-12">
                                    <div className="form-group">
                                        <label>{YEST.address}</label>
                                        <input
                                            type="text"
                                            name="address"
                                            className="form-control"
                                            placeholder={YEST.t("your_address")}
                                            required
                                            value={bookingData.address}
                                            onChange={handleBookingData}
                                        />
                                    </div>
                                </div>
                                <div className="col-lg-12">
                                    <div className="form-group">
                                        <label>
                                            {YEST.t("additional_info")}
                                        </label>
                                        <textarea
                                            className="form-control"
                                            cols="30"
                                            rows="5"
                                            name="additionalInfo"
                                            placeholder={YEST.t(
                                                "additional_info"
                                            )}
                                            value={bookingData.additionalInfo}
                                            onChange={handleBookingData}
                                        ></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-4">
                    <div className="booking-summary">
                        <h4 className="mb-30">{YEST.t("booking_summary")}</h4>
                        <div className="booking-room-img">
                            <img
                                src={cottage.thumbnail_image}
                                alt=""
                                className="w-100"
                            />
                        </div>
                        <div className="booking-room-content">
                            <div className="booking-room-title">
                                <div>
                                    <h5>{cottage.name}</h5>
                                </div>
                                <div className="room-price">
                                    <span>
                                        <strong>
                                            {Helper.formatPrice(cottage.price)}
                                        </strong>{" "}
                                        / {YEST.t("night")}
                                    </span>
                                </div>
                            </div>
                            <div>
                                <Rating value={cottage.rating} readOnly />
                            </div>
                        </div>
                        <div className="booking-order-info mt-4">
                            <div className="booking-room-summary">
                                <h5>{YEST.t("order_info")}</h5>
                                <ul>
                                    <li>
                                        {YEST.t("adults")}:{" "}
                                        <span>
                                            {
                                                appState.adults[
                                                    appState.selectedAdultIndex
                                                ].value
                                            }
                                        </span>
                                    </li>
                                    <li>
                                        {YEST.t("children")}:{" "}
                                        <span>
                                            {
                                                appState.children[
                                                    appState.selectedChildIndex
                                                ].value
                                            }
                                        </span>
                                    </li>
                                    <li>
                                        {YEST.t("check_in")}:{" "}
                                        <span>
                                            {new Date(startDate).toDateString()}{" "}
                                            -{" "}
                                            {
                                                window.yestSetting
                                                    .generalSettings.checkInTime
                                            }
                                        </span>
                                    </li>
                                    <li>
                                        {YEST.t("check_out")}:{" "}
                                        <span>
                                            {new Date(endDate).toDateString()} -{" "}
                                            {
                                                window.yestSetting
                                                    .generalSettings
                                                    .checkOutTime
                                            }
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div className="booking-pay-info">
                                <h5>{YEST.t("order_pay_summary")}</h5>
                                <ul>
                                    <li>
                                        <strong>{YEST.t("stay")}:</strong>{" "}
                                        <span>
                                            {stayingNights} {YEST.t("nights")}
                                        </span>
                                    </li>
                                    <li>
                                        <strong>{YEST.t("total")}:</strong>{" "}
                                        <span>
                                            {Helper.formatPrice(
                                                stayingNights * cottage.price
                                            )}
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div className="text-end mt-40 d-flex justify-content-end">
                                {!bookingData.loading && (
                                    <button
                                        className="yest-btn bg-danger me-2"
                                        onClick={() => {
                                            setbookingUi(false);
                                            window.scrollTo(0, 305);
                                        }}
                                    >
                                        <i className="far fa-arrow-left me-1"></i>{" "}
                                        {YEST.t("back")}
                                    </button>
                                )}

                                {bookingData.loading ? (
                                    <button type="button" className="yest-btn">
                                        <Loader
                                            type="Oval"
                                            color="#fff"
                                            height="20px"
                                        />
                                    </button>
                                ) : (
                                    <button type="submit" className="yest-btn">
                                        {YEST.t("book_now")}{" "}
                                        <i className="far fa-arrow-right"></i>
                                    </button>
                                )}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    );
};

export default RoomBooking;
