import { useEffect } from "react";

const VideoAreaSection = () => {
    useEffect(() => {
        $(".popup-youtube, .popup-vimeo, .popup-gmaps").magnificPopup({
            type: "iframe",
            mainClass: "mfp-fade",
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false,
        });
    }, []);
    return (
        <>
            <div className="video-area pt-100">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="yest-heading text-center">
                                <span className="yest-title-heading">
                                    Know Us More
                                </span>
                                <h2 className="yest-title">
                                    Let's Check Our Video
                                </h2>
                                <p>
                                    It is a long established fact that a reader
                                    will be distracted by the readable content
                                    of a page when looking at its layout.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div className="row align-items-center">
                        <div className="col-lg-12">
                            <div className="video-wrapper">
                                <img
                                    src="/public/frontend/assets/img/bg/video-img.jpg"
                                    alt="Banner Video"
                                />
                                <a
                                    className="play-btn popup-youtube"
                                    href="https://www.youtube.com/watch?v=ckHzmP1evNU"
                                >
                                    <i className="fas fa-play"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default VideoAreaSection;
