import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";
import BlogList from "./components/BlogList";

const Blog = () => {
    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">{YEST.t("blogs")}</h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <a href="index.html">{YEST.t("home")}</a>
                            </li>
                            <li className="active">{YEST.t("blogs")}</li>
                        </ul>
                    </BreadCrumb>
                </div>
                <BlogList />
            </main>
        </>
    );
};

export default Blog;
