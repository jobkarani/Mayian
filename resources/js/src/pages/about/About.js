import { NavLink } from "react-router-dom";
import AboutAreaSection from "../../inc/AboutAreaSection";
import BreadCrumb from "../../inc/BreadCrumb"; 
import CounterAreaSection from "../../inc/CounterAreaSection";
import SubscribeArea from "../../inc/SubscribeArea";
import TeamAreaSection from "../../inc/TeamAreaSection";
import TestimonialAreaSection from "../../inc/TestimonialAreaSection";

const About = () => {
    return (
        <>
            <main className="main">
                <BreadCrumb>
                    <h2 className="breadcrumb-title">About Us</h2>
                    <ul className="breadcrumb-menu">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li className="active">About Us</li>
                    </ul>
                </BreadCrumb>
                <div className="pt-120">
                    <AboutAreaSection />
                    <CounterAreaSection />
                    <TeamAreaSection /> 
                    <SubscribeArea/>
                </div>
            </main>
        </>
    );
};

export default About;
