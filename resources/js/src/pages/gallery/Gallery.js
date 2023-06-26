import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import GalleryList from "./components/GalleryList";

const Gallery = () => {
    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">
                            {YEST.t("gallery")}
                        </h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <NavLink to="/">{YEST.t("home")}</NavLink>
                            </li>
                            <li className="active">{YEST.t("gallery")}</li>
                        </ul>
                    </BreadCrumb>
                </div>
                <GalleryList padding={"pt-120 pb-100"} />
            </main>
        </>
    );
};

export default Gallery;
