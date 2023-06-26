import { Select } from "../../../helpers/FixRequiredSelect";
import DatePicker from "react-datepicker";
// 3rd party packages
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";

import {
    cottageLoading,
    dateRange,
    selectedRoomIndex,
    selectedAdultIndex,
    selectedChildIndex,
} from "../../../store/slices/appSlice";

const SearchAreaSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const [startDate, endDate] = appState.dateRange;

    const handleSearch = (e) => {
        e.preventDefault();
        YEST.dispatch(cottageLoading(true));
        YEST.navigate("/cottages");
    };

    return (
        <>
            <div className="search-area">
                <div className="container">
                    <div className="search-form-wrapper">
                        <form onSubmit={handleSearch}>
                            <div className="row align-items-end justify-content-center">
                                <div className="col-md-6 col-lg-3 search-input">
                                    <div className="form-group">
                                        <label>
                                            {YEST.t("check_in")} -{" "}
                                            {YEST.t("out")}
                                        </label>
                                        <DatePicker
                                            selectsRange={true}
                                            startDate={startDate}
                                            endDate={endDate}
                                            onChange={(date) =>
                                                YEST.dispatch(dateRange(date))
                                            }
                                            minDate={new Date()}
                                            className="form-control"
                                        />
                                        <div>
                                            <i className="far fa-calendar-alt"></i>
                                        </div>
                                    </div>
                                </div>

                                <div className="col-md-6 col-lg-2 search-input">
                                    <div className="form-group">
                                        <label>{YEST.t("rooms")}</label>
                                        <Select
                                            classNamePrefix="react-select-style"
                                            options={appState.rooms}
                                            onChange={(data) =>
                                                YEST.dispatch(
                                                    selectedRoomIndex(data)
                                                )
                                            }
                                            placeholder={YEST.t("rooms")}
                                            defaultValue={
                                                appState.rooms[
                                                    appState.selectedRoomIndex
                                                ]
                                            }
                                        />
                                    </div>
                                </div>
                                <div className="col-md-6 col-lg-2 search-input">
                                    <div className="form-group">
                                        <label>{YEST.t("adults")}</label>
                                        <Select
                                            classNamePrefix="react-select-style"
                                            options={appState.adults}
                                            onChange={(data) =>
                                                YEST.dispatch(
                                                    selectedAdultIndex(data)
                                                )
                                            }
                                            placeholder={YEST.t("adults")}
                                            defaultValue={
                                                appState.adults[
                                                    appState.selectedAdultIndex
                                                ]
                                            }
                                        />
                                    </div>
                                </div>
                                <div className="col-md-6 col-lg-2 search-input">
                                    <div className="form-group">
                                        <label>{YEST.t("children")}</label>
                                        <Select
                                            classNamePrefix="react-select-style"
                                            options={appState.children}
                                            onChange={(data) =>
                                                YEST.dispatch(
                                                    selectedChildIndex(data)
                                                )
                                            }
                                            placeholder={YEST.t("children")}
                                            defaultValue={
                                                appState.children[
                                                    appState.selectedChildIndex
                                                ]
                                            }
                                        />
                                    </div>
                                </div>
                                <div className="col-md-6 col-lg-2 search-input">
                                    {appState.cottageLoading ? (
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
                                            <i className="far fa-search"></i>{" "}
                                            {YEST.t("search")}
                                        </button>
                                    )}
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </>
    );
};

export default SearchAreaSection;
