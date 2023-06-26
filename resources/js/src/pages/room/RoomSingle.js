import BreadCrumb from "../../inc/BreadCrumb";
import RoomDetails from "./components/RoomDetails";
import DataRepository from "../../../repositories/DataRepository";
import RoomSingleLoading from "./components/RoomSingleLoading";
import RoomBooking from "./components/RoomBooking";
import RoomBookingSuccess from "./components/RoomBookingSuccess";
import { NavLink } from "react-router-dom";

const RoomSingle = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const [startDate, endDate] = appState.dateRange;

    const [bookingUi, setbookingUi] = YEST.useState(false);
    const [bookingSuccessUi, setbookingSuccessUi] = YEST.useState(false);
    const [cottage, setcottage] = YEST.useState(null);
    const [bookable, setbookable] = YEST.useState(false);
    const [loading, setloading] = YEST.useState(true);
    const [availability, setavailability] = YEST.useState(true);
    const [stayingNights, setstayingNights] = YEST.useState(0);
    const [loaded, setloaded] = YEST.useState(false);

    const { slug } = YEST.useParams();

    YEST.useEffect(() => {
        setloading(true);
    }, [slug]);

    YEST.useEffect(() => {
        getCottageDetails();
    }, [slug]);

    // get cottage details
    const getCottageDetails = async () => {
        let data = {
            checkIn: startDate,
            checkOut: endDate,
        };
        let response = await DataRepository.getCottageDetails(slug, data);
        setcottage(response.data.data);
        setavailability(response.data.availability);
        setbookable(response.data.availability);
        setstayingNights(response.data.stayingNights);
        setloading(false);
    };

    return (
        <main className="main">
            <BreadCrumb>
                <h2 className="breadcrumb-title">
                    {YEST.t("cottage_details")}
                </h2>
                <ul className="breadcrumb-menu">
                    <li>
                        <NavLink to="/">{YEST.t("home")}</NavLink>
                    </li>
                    <li className="active">{YEST.t("cottage_details")}</li>
                </ul>
            </BreadCrumb>

            <div className="room-single pt-120 pb-100">
                <div className="container">
                    {loading ? (
                        <RoomSingleLoading />
                    ) : (
                        <>
                            {!bookingUi && !bookingSuccessUi ? (
                                <RoomDetails
                                    cottage={cottage}
                                    availability={availability}
                                    setavailability={setavailability}
                                    getCottageDetails={getCottageDetails}
                                    loaded={loaded}
                                    setloaded={setloaded}
                                    setbookingUi={setbookingUi}
                                    bookable={bookable}
                                    setbookable={setbookable}
                                />
                            ) : (
                                <>
                                    {bookingSuccessUi ? (
                                        <RoomBookingSuccess />
                                    ) : (
                                        <RoomBooking
                                            cottage={cottage}
                                            setbookingUi={setbookingUi}
                                            stayingNights={stayingNights}
                                            setbookingSuccessUi={
                                                setbookingSuccessUi
                                            }
                                        />
                                    )}
                                </>
                            )}
                        </>
                    )}
                </div>
            </div>
        </main>
    );
};

export default RoomSingle;
