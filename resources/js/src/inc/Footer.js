import { NavLink } from "react-router-dom";
import DOMPurify from "dompurify";
import { loading, bestCottages } from "../store/slices/dataSlice";
import DataRepository from "../../repositories/DataRepository";

const Footer = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    YEST.useEffect(async () => {
        if (dataState.bestCottages.length === 0) {
            YEST.dispatch(loading());
            let response = await DataRepository.getBestCottages();
            YEST.dispatch(bestCottages(response.data.data));
            YEST.dispatch(loading());
        }
    }, []);

    return (
        <footer className="footer-area pt-100">
            <div className="footer-widget">
                <div className="container">
                    <div className="row footer-widget-wrapper pb-50">
                        <div className="col-md-6 col-lg-3">
                            <div className="footer-widget-box about-us">
                                <NavLink to="/" className="footer-logo">
                                    <img src={appState.footer.logo} />
                                </NavLink>
                                <p>{appState.footer.footer_about}</p>
                            </div>
                        </div>
                        <div className="col-md-6 col-lg-3">
                            <div className="footer-widget-box list">
                                <h4 className="footer-widget-title">
                                    {YEST.t("quick_links")}
                                </h4>
                                <ul className="footer-list">
                                    {appState.footer.footer_pages.map(
                                        (page, pageIndex) => {
                                            return (
                                                <li key={`pages-${pageIndex}`}>
                                                    <NavLink
                                                        to={`/links/${page.slug}`}
                                                    >
                                                        {page.title}
                                                    </NavLink>
                                                </li>
                                            );
                                        }
                                    )}
                                </ul>
                            </div>
                        </div>
                        <div className="col-md-6 col-lg-3">
                            <div className="footer-widget-box">
                                <h4 className="footer-widget-title">
                                    {YEST.t("best_cottages")}
                                </h4>
                                <ul className="footer-list">
                                    {dataState.bestCottages.map(
                                        (bestCottage, footerCtgIndex) => {
                                            return (
                                                <li
                                                    key={`footer-cottage${footerCtgIndex}`}
                                                >
                                                    <NavLink
                                                        to={`/cottages/${bestCottage.slug}`}
                                                    >
                                                        {bestCottage.name}
                                                    </NavLink>
                                                </li>
                                            );
                                        }
                                    )}
                                </ul>
                            </div>
                        </div>
                        <div className="col-md-6 col-lg-3">
                            <div className="footer-widget-box">
                                <h4 className="footer-widget-title">
                                    {YEST.t("contact_us")}
                                </h4>
                                <ul className="footer-contact">
                                    <li>
                                        <i className="far fa-map-marker-alt"></i>
                                        {appState.footer.footer_address}
                                    </li>
                                    <li>
                                        <a
                                            href={`tel:${appState.footer.footer_phone}`}
                                        >
                                            <i className="far fa-phone"></i>
                                            {appState.footer.footer_phone}
                                        </a>
                                    </li>
                                    <li>
                                        <a
                                            href={`mailto:${appState.footer.footer_email}`}
                                        >
                                            <i className="far fa-envelope"></i>
                                            <span>
                                                {appState.footer.footer_email}
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="copyright">
                <div className="container">
                    <p
                        className="copyright-text"
                        dangerouslySetInnerHTML={sanitizedData(
                            appState.footer.copyright_text
                        )}
                    ></p>
                </div>
            </div>
        </footer>
    );
};

export default Footer;
