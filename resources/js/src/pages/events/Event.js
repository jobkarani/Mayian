import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import EventList from "./components/EventList";

const Event = () => {
    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">{YEST.t("events")}</h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <NavLink to="/">{YEST.t("home")}</NavLink>
                            </li>
                            <li className="active">{YEST.t("events")}</li>
                        </ul>
                    </BreadCrumb>
                </div>
                <EventList />
            </main>
        </>
    );
};

export default Event;
