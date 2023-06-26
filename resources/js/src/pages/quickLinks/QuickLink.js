import { NavLink } from "react-router-dom";
import BreadCrumb from "../../inc/BreadCrumb";

import DOMPurify from "dompurify";

const QuickLink = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    const [page, setPage] = YEST.useState({
        title: "",
        content: "",
    });
    const { slug } = YEST.useParams();

    YEST.useEffect(() => {
        let page = appState.footer.footer_pages.find((page) => {
            return page.slug === slug;
        });
        setPage(page);
    }, [slug]);

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    return (
        <>
            <main className="main">
                <div className="mb-3">
                    <BreadCrumb>
                        <h2 className="breadcrumb-title">{page.title}</h2>
                        <ul className="breadcrumb-menu">
                            <li>
                                <NavLink to="/">{YEST.t("home")}</NavLink>
                            </li>
                            <li className="active">{YEST.t("quick_links")}</li>
                        </ul>
                    </BreadCrumb>
                </div>

                <div className="pt-100 pb-80">
                    <div className="container">
                        <div className="row">
                            <div className="col">
                                <div className="terms-content">
                                    <div
                                        dangerouslySetInnerHTML={sanitizedData(
                                            page.content
                                        )}
                                    ></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </>
    );
};

export default QuickLink;
