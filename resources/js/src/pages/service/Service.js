import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import ServiceList from "./components/ServiceList";

const Service = () => {
    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">
                            {YEST.t("services")}
                        </h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <NavLink to="/">{YEST.t("home")}</NavLink>
                            </li>
                            <li className="active">{YEST.t("services")}</li>
                        </ul>
                    </BreadCrumb>
                </div>
                <ServiceList />
            </main>
        </>
    );
};

export default Service;
