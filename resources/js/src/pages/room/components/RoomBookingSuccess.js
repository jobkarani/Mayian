const RoomBookingSuccess = () => {
    return (
        <div className="row">
            <div className="col-lg-12 text-center">
                <div className="text-center alert alert-warning">
                    {YEST.t(
                        "thanks_for_your_booking_we_have_successfully_listed_it_and_will_contact_you_soon"
                    )}
                </div>
                <img
                    src="/public/frontend/assets/img/booking.jpg"
                    alt=""
                    className="img-fluid w-50"
                />
            </div>
        </div>
    );
};

export default RoomBookingSuccess;
