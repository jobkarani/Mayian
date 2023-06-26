import { NavLink } from "react-router-dom";
import { LOCAL_STORAGE_KEYS } from "../helpers/Constant";
import Helper from "../helpers/Helper";

const Header = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    // change language to selected
    const handleLangChange = (langCode) => {
        Helper.setLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG, langCode);
        YEST.i18n.changeLanguage(langCode);
        window.location.reload();
    };

    // change currency to selected
    const handleCurrencyChange = (code) => {
        let currency = appState.currencies.find((currency) => {
            return currency.code === code;
        });

        if (currency) {
            Helper.setLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_CURRENCY, currency);
        } else {
            Helper.setLocalStorage(
                LOCAL_STORAGE_KEYS.LOCAL_CURRENCY,
                YEST.defaultCurrency
            );
        }
    };

    YEST.useEffect(() => {
        // to show English selected in language switcher
        if (
            Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG) ===
                null ||
            Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG) ===
                undefined
        ) {
            Helper.setLocalStorage(
                LOCAL_STORAGE_KEYS.LOCAL_LANG,
                YEST.defaultLang
            );
            YEST.i18n.changeLanguage(YEST.defaultLang);
        } else if (
            Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG) ===
            "en-US"
        ) {
            Helper.setLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG, "en");
            YEST.i18n.changeLanguage("en");
        }
    }, []);

    // nice select init
    YEST.useEffect(() => {
        // nice select
        window.$(".header-select").niceSelect();

        // language
        window.$(".language-select").on("change", () => {
            handleLangChange(
                window.$(".language-select option:selected").data("id")
            );
        });

        // currency
        handleCurrencyChange(
            Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_CURRENCY)
                ?.code || "USD"
        );

        window.$(".currency-select").on("change", () => {
            handleCurrencyChange(
                window.$(".currency-select option:selected").data("code")
            );
            window.location.reload();
        });
    }, []);

    // set local lang & currency selected
    YEST.useEffect(() => {
        let tempLang = appState.languages.find((lang) => {
            return (
                lang.code ===
                Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.LOCAL_LANG)
            );
        });

        if (tempLang === undefined) {
            appState.languages.find((lang) => {
                return lang.code === "en";
            });
        }

        window.$(".language-select .current").text(tempLang.name);
        window.$(".language-select .list li").removeClass("selected");
        window.$(".language-select .list li").removeClass("focus");
        window
            .$(".language-select .list")
            .find(`[data-value='${tempLang.name}']`)
            .addClass("selected focus");

        // currency
        let currency = Helper.getFromLocalStorage(
            LOCAL_STORAGE_KEYS.LOCAL_CURRENCY
        );
        window.$(".currency-select .current").text(currency.code);
        window.$(".currency-select .list li").removeClass("selected");
        window.$(".currency-select .list li").removeClass("focus");
        window
            .$(".currency-select .list")
            .find(`[data-value='${currency.code}']`)
            .addClass("selected focus");
    }, []);

    return (
        <>
            <header className="yesort-home header">
                <div className="top-header">
                    <div className="container">
                        <div className="row align-items-center">
                            <div className="col-5 col-md-7">
                                <div className="top-header-left text-truncate">
                                    <div className="top-contact-info">
                                        <ul>
                                            <li>
                                                <a href="tel:+21234567897">
                                                    <i className="fas fa-phone"></i>
                                                    {
                                                        appState.topbar
                                                            .topbar_helpline_number
                                                    }
                                                </a>
                                            </li>
                                            <li className="d-none d-md-inline">
                                                <a
                                                    href={`mailto:${appState.topbar.topbar_email}`}
                                                >
                                                    <i className="fas fa-envelope"></i>
                                                    <span className="__cf_email__">
                                                        {
                                                            appState.topbar
                                                                .topbar_email
                                                        }
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div className="top-social">
                                        <a
                                            href={
                                                appState.topbar
                                                    .topbar_facebook_link
                                            }
                                            target="_blank"
                                        >
                                            <i className="fab fa-facebook-f"></i>
                                        </a>
                                        <a
                                            href={
                                                appState.topbar
                                                    .topbar_twitter_link
                                            }
                                            target="_blank"
                                        >
                                            <i className="fab fa-twitter"></i>
                                        </a>
                                        <a
                                            href={
                                                appState.topbar
                                                    .topbar_instagram_link
                                            }
                                            target="_blank"
                                        >
                                            <i className="fab fa-instagram"></i>
                                        </a>
                                        <a
                                            href={
                                                appState.topbar
                                                    .topbar_linked_in_link
                                            }
                                            target="_blank"
                                        >
                                            <i className="fab fa-linkedin-in"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-7 col-md-5 pe-1 pe-md-2">
                                <div className="top-header-right">
                                    {/* language */}
                                    <div className="lang">
                                        <select
                                            name="lang"
                                            className="header-select language-select fs-15"
                                        >
                                            {appState.languages.map(
                                                (lang, index) => {
                                                    return (
                                                        <option
                                                            data-id={lang.code}
                                                            key={`lang-${index}`}
                                                        >
                                                            {lang.name}
                                                        </option>
                                                    );
                                                }
                                            )}
                                        </select>
                                    </div>
                                    {/* language */}

                                    <div className="currency">
                                        <select
                                            name="currency"
                                            className="header-select currency-select"
                                        >
                                            {appState.currencies.map(
                                                (currency, indexCurrency) => {
                                                    return (
                                                        <option
                                                            data-code={
                                                                currency.code
                                                            }
                                                            key={`currency-${indexCurrency}`}
                                                        >
                                                            {currency.code}
                                                        </option>
                                                    );
                                                }
                                            )}
                                        </select>
                                    </div>

                                    <div className="account">
                                        {Helper.isLoggedIn() ? (
                                            <NavLink
                                                to="/user/dashboard"
                                                end
                                                className={({ isActive }) => {
                                                    return isActive
                                                        ? "active-link"
                                                        : "";
                                                }}
                                            >
                                                <i className="far fa-user"></i>
                                                <span className="d-none d-lg-inline">
                                                    {YEST.t("dashboard")}
                                                </span>
                                            </NavLink>
                                        ) : (
                                            <NavLink
                                                to="/user/login"
                                                end
                                                className={({ isActive }) => {
                                                    return isActive
                                                        ? "active-link"
                                                        : "";
                                                }}
                                            >
                                                <i className="far fa-sign-in"></i>
                                                <span className="d-none d-md-inline">
                                                    {YEST.t("login")}
                                                </span>
                                            </NavLink>
                                        )}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="main-navigation">
                    <nav className={`navbar navbar-expand-lg`}>
                        <div className="container g-3 glass">
                            <NavLink to="/" className="navbar-brand">
                                <img
                                    src={appState.header.logo}
                                    className="logo-display"
                                    alt="logo"
                                />
                                <img
                                    src={appState.header.logoDark}
                                    className="logo-scrolled"
                                    alt="logo"
                                />
                            </NavLink>
                            <button
                                className="navbar-toggler"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#main_nav"
                                aria-expanded="false"
                                aria-label="Toggle navigation"
                            >
                                <span className="navbar-toggler-icon">
                                    <i className="far fa-bars"></i>
                                </span>
                            </button>
                            <div
                                className="collapse navbar-collapse"
                                id="main_nav"
                            >
                                <ul className="navbar-nav ms-auto">
                                    <li className="nav-item dropdown">
                                        <NavLink
                                            to="/"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("home")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item d-none">
                                        <NavLink
                                            to="/about"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("about")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink
                                            to="/cottages"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("cottages")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink
                                            to="/services"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("services")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink
                                            to="/blogs"
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("blogs")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink
                                            to="/gallery"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("gallery")}
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink
                                            to="/events"
                                            end
                                            className={({ isActive }) => {
                                                return isActive
                                                    ? "nav-link active-link"
                                                    : "nav-link";
                                            }}
                                        >
                                            {YEST.t("events")}
                                        </NavLink>
                                    </li>
                                </ul>
                                <div className="header-btn">
                                    <NavLink
                                        to="/cottages"
                                        end
                                        className="search-btn px-3 fw-500"
                                    >
                                        {YEST.t("book_now")}
                                    </NavLink>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
        </>
    );
};

export default Header;
