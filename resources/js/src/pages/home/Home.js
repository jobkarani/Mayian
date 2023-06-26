import SubscribeArea from "../../inc/SubscribeArea";
import AboutAreaSection from "../../inc/AboutAreaSection";
import BlogAreaSection from "./components/BlogAreaSection";
import CounterAreaSection from "../../inc/CounterAreaSection";
import FeatureAreaSection from "./components/FeatureAreaSection";
import HeroSection from "./components/HeroSection";
import PartnerAreaSection from "./components/PartnerAreaSection";
import RoomAreaSection from "./components/RoomAreaSection";
import SearchAreaSection from "./components/SearchAreaSection";
import ServiceAreaSection from "./components/ServiceAreaSection";
import TeamAreaSection from "../../inc/TeamAreaSection";
import TestimonialAreaSection from "../../inc/TestimonialAreaSection";
import VideoAreaSection from "../../inc/VideoAreaSection";
import GalleryAreaSection from "./components/GalleryAreaSection";

const Home = () => {
    return (
        <>
            <div className="home-wrapper">
                <main className="yesort-home main">
                    <HeroSection />

                    <SearchAreaSection />

                    <FeatureAreaSection />

                    <RoomAreaSection />

                    <ServiceAreaSection />

                    <TestimonialAreaSection />

                    <GalleryAreaSection />

                    <BlogAreaSection />

                    <SubscribeArea />

                    <PartnerAreaSection />
                </main>
            </div>
        </>
    );
};

export default Home;
