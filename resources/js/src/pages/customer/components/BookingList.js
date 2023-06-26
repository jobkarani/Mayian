import React from "react";
import AuthRepository from "../../../../repositories/AuthRepository";
import {
    bookings,
    nextBookings,
    nextLoading,
} from "../../../store/slices/authSlice";
import BookingLoading from "./BookingLoading";

// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import Helper from "../../../helpers/Helper";

const BookingList = ({ recent }) => {
    const [loading, setloading] = YEST.useState(true);
    const [activeBooking, setactiveBooking] = YEST.useState(null);

    const authState = YEST.useSelector((state) => state.authServiceProvider);

    YEST.useEffect(() => {
        if (recent) {
            getRecentBookings();
        } else {
            getBookings();
        }
        setloading(false);
    }, []);

    // get recent bookings
    const getRecentBookings = async () => {
        let response = await AuthRepository.getRecentBookings();
        YEST.dispatch(
            bookings({
                data: response.data.data,
                nextPage: null,
            })
        );
    };

    // get bookings
    const getBookings = async () => {
        let response = await AuthRepository.getBookings();
        YEST.dispatch(
            bookings({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
    };

    // get next bookings
    const getNextBookings = async () => {
        YEST.dispatch(nextLoading());
        let response = await AuthRepository.getNextBookings(
            authState.nextBookingsLink
        );
        YEST.dispatch(
            nextBookings({
                data: response.data.data,
                nextPage: response.data.links.next,
            })
        );
        YEST.dispatch(nextLoading());
    };

    // loading
    YEST.useEffect(() => {}, [loading]);

    if (recent && loading) {
        return <BookingLoading />;
    }

    if (!recent && loading) {
        return (
            <>
                <BookingLoading />
                <BookingLoading />
                <BookingLoading />
            </>
        );
    }

    return (
        <>
            <div className="card card-body">
                {/* modal content */}
                <div
                    className="modal fade"
                    id="bookingDetailsModal"
                    tabIndex="-1"
                    aria-labelledby="bookingDetailsModalLabel"
                    aria-hidden="true"
                >
                    <div className="modal-dialog modal-dialog-centered">
                        {activeBooking && (
                            <div className="modal-content">
                                <div className="modal-header">
                                    <h5
                                        className="modal-title"
                                        id="bookingDetailsModalLabel"
                                    >
                                        {activeBooking.code}
                                    </h5>
                                    <button
                                        type="button"
                                        className="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"
                                    ></button>
                                </div>
                                <div className="modal-body">
                                    <h6 className="me-1">
                                        {YEST.t("Cottage")}:{" "}
                                        <a
                                            href={`/cottages/${activeBooking.cottageSlug}`}
                                            target="_blank"
                                            rel="noopener noreferrer"
                                            className="text-success"
                                        >
                                            {activeBooking.cottageName}
                                        </a>
                                    </h6>
                                    <h6 className="">
                                        {YEST.t("booking_date")}:{" "}
                                        {activeBooking.checkIn} -{" "}
                                        {activeBooking.checkOut}
                                    </h6>
                                    <h6 className="">
                                        {YEST.t("staying_nights")}:{" "}
                                        {activeBooking.stayingNights}
                                    </h6>
                                    <h6 className="">
                                        {YEST.t("total_cost")}:{" "}
                                        {Helper.formatPrice(activeBooking.cost)}
                                    </h6>
                                    <h6 className="">
                                        {YEST.t("adults")}:{" "}
                                        {activeBooking.adults}
                                    </h6>
                                    <h6 className="">
                                        {YEST.t("children")}:{" "}
                                        {activeBooking.children}
                                    </h6>
                                    {activeBooking.additional_info && (
                                        <h6 className="">
                                            {YEST.t("additional_info")}:{" "}
                                            {activeBooking.additional_info}
                                        </h6>
                                    )}

                                    <h6 className="">
                                        {YEST.t("status")}:{" "}
                                        <span
                                            className={
                                                "text-capitalize badge badge-" +
                                                activeBooking.statusClass
                                            }
                                        >
                                            {activeBooking.status}
                                        </span>
                                    </h6>
                                </div>
                            </div>
                        )}
                    </div>
                </div>
                {/* modal content */}

                <div className="table-responsive">
                    <table className="table table-hover table-borderless mb-0">
                        <thead>
                            <tr>
                                <th scope="col">{YEST.t("sl")}</th>
                                <th scope="col">{YEST.t("booking_code")}</th>
                                <th scope="col">{YEST.t("booking_date")}</th>
                                <th scope="col">{YEST.t("status")}</th>
                                <th scope="col">{YEST.t("action")}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {authState.bookings.map((booking, bookingIndex) => {
                                return (
                                    <tr key={"recent-booking-" + bookingIndex}>
                                        <th scope="row">{bookingIndex + 1}</th>
                                        <td>{booking.code}</td>
                                        <td>
                                            {booking.checkIn} -{" "}
                                            {booking.checkOut}
                                        </td>
                                        <td>
                                            <span
                                                className={
                                                    "text-capitalize badge badge-" +
                                                    booking.statusClass
                                                }
                                            >
                                                {booking.status}
                                            </span>
                                        </td>
                                        <td>
                                            <i
                                                className="fas fa-eye cursor-pointer"
                                                data-bs-toggle="modal"
                                                data-bs-target="#bookingDetailsModal"
                                                onClick={() => {
                                                    setactiveBooking(booking);
                                                }}
                                            ></i>
                                        </td>
                                    </tr>
                                );
                            })}
                        </tbody>
                    </table>
                </div>
            </div>
            {authState.nextBookingsLink !== null && (
                <div className="text-center mt-5">
                    {authState.nextLoading ? (
                        <button className="yest-btn" type="button">
                            <Loader type="Oval" color="#fff" height="20px" />
                        </button>
                    ) : (
                        <button className="yest-btn" onClick={getNextBookings}>
                            {YEST.t("load_more")}{" "}
                            <i className="far fa-sync"></i>
                        </button>
                    )}
                </div>
            )}
        </>
    );
};

export default BookingList;
