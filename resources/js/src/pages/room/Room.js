import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import SearchAreaSection from "../home/components/SearchAreaSection";
import RoomList from "./components/RoomList";

const Room = () => {
    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">
                            {YEST.t("cottages")}
                        </h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <NavLink to="/">{YEST.t("home")}</NavLink>
                            </li>
                            <li className="active">{YEST.t("cottages")}</li>
                        </ul>
                    </BreadCrumb>
                </div>
                <SearchAreaSection />
                <RoomList />
            </main>
        </>
    );
};

export default Room;
