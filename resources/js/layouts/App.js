import { useContext, useEffect, useState, useRef } from "react";
import { useTranslation } from "react-i18next";
import { useLocation, useNavigate, useParams } from "react-router-dom";
import Web from "../routes/Web";
import { api } from "../src/api/Api";

import { useSelector, useDispatch } from "react-redux";
import Footer from "../src/inc/Footer";

// inc
import Header from "../src/inc/Header";

import { useSnackbar } from "notistack";

const App = () => {
    const { t, i18n } = useTranslation();
    const location = useLocation();
    const navigate = useNavigate();
    const { enqueueSnackbar } = useSnackbar();
    const dispatch = useDispatch();

    // everytime route changes
    useEffect(() => {
        window.scrollTo(0, 0);
    }, [location]);

    // on scrol
    useEffect(() => {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $(".navbar").addClass("fixed-top");
            } else {
                $(".navbar").removeClass("fixed-top");
            }
        });
    }, []);

    // useState
    const [mounted, setMounted] = useState(false);

    // useEffect
    useEffect(() => {
        YEST.api = api;
        YEST.t = t;
        YEST.i18n = i18n;
        YEST.useContext = useContext;
        YEST.useEffect = useEffect;
        YEST.useState = useState;
        YEST.useParams = useParams;
        YEST.useRef = useRef;
        YEST.notify = notify;
        YEST.navigate = navigate;
        YEST.dispatch = dispatch;
        YEST.useSelector = useSelector;
        YEST.useLocation = useLocation;
        setMounted(true);
    }, []);

    // global notifier
    const notify = (variant, message) => {
        enqueueSnackbar(t(message), {
            variant,
        });
    };

    return mounted ? (
        <>
            <Header />

            {/* routes */}
            <div className="main-wrapper">
                <Web />
            </div>

            {/* includes */}
            <Footer />

            <button
                id="scroll-top"
                onClick={() =>
                    window.scroll({
                        top: 0,
                        left: 0,
                        behavior: "smooth",
                    })
                }
            >
                <i className="far fa-angle-double-up"></i>
            </button>
        </>
    ) : null;
};

export default App;
