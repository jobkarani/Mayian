import React from "react";
import DataRepository from "../../../repositories/DataRepository";
import BreadCrumb from "../../inc/BreadCrumb";
import DOMPurify from "dompurify";
// import Swiper core and required modules
import SwiperCore, { Autoplay, Navigation } from "swiper";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";
import RoomSingleLoading from "../room/components/RoomSingleLoading";
import { NavLink } from "react-router-dom";

// install Swiper modules
SwiperCore.use([Autoplay, Navigation]);

const BlogSingle = () => {
    // data
    const dataState = YEST.useSelector((state) => state.dataServiceProvider);

    const { slug } = YEST.useParams();
    const blogDetailsRef = YEST.useRef(null);

    const [blog, setblog] = YEST.useState(null);
    const [loading, setloading] = YEST.useState(true);
    const [categories, setcategories] = YEST.useState([]);
    const [latest, setlatest] = YEST.useState([]);

    YEST.useEffect(() => {
        setloading(true);
        getBlogDetails();
    }, [slug]);

    // get blog details
    const getBlogDetails = async () => {
        let response = await DataRepository.getBlogDetails(slug);
        setblog(response.data.data);
        setcategories(response.data.categories);
        setlatest(response.data.latest);
        setloading(false);
    };

    const sanitizedData = (data) => ({
        __html: DOMPurify.sanitize(data),
    });

    if (!loading && !blog) {
        return "";
    }
    return (
        <main className="main">
            <BreadCrumb>
                <h2 className="breadcrumb-title">{YEST.t("blog_details")}</h2>
                <ul className="breadcrumb-menu">
                    <li>
                        <NavLink to="/">{YEST.t("home")}</NavLink>
                    </li>
                    <li className="active">{YEST.t("blog_details")}</li>
                </ul>
            </BreadCrumb>

            <div className="blog-single-area  pt-120 pb-100">
                <div className="container">
                    <div className="blog-single-wrapper">
                        {loading ? (
                            <RoomSingleLoading />
                        ) : (
                            <div className="row">
                                <div className="col-xl-8 col-lg-8">
                                    <div className="blog-details">
                                        {/* swiper slider here */}
                                        <Swiper
                                            ref={blogDetailsRef}
                                            loop={true}
                                            navigation={true}
                                            autoplay={true}
                                            slidesPerView={1}
                                            className={`room-details-slider swiper-nav-round mb-30`}
                                        >
                                            {blog.gallery_images.map(
                                                (gallery, index) => {
                                                    return (
                                                        <SwiperSlide
                                                            key={
                                                                "room-gallery-" +
                                                                index
                                                            }
                                                        >
                                                            <div className="room-details-slider-single">
                                                                <img
                                                                    src={
                                                                        gallery
                                                                    }
                                                                    alt=""
                                                                />
                                                            </div>
                                                        </SwiperSlide>
                                                    );
                                                }
                                            )}
                                        </Swiper>

                                        <div className="blog-details">
                                            <h3 className="mb-30">
                                                {blog.title}
                                            </h3>
                                            <div
                                                dangerouslySetInnerHTML={sanitizedData(
                                                    blog.description
                                                )}
                                            ></div>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-xl-4 col-lg-4">
                                    <aside className="sidebar">
                                        <div className="widget recent-post">
                                            <h5 className="widget-title">
                                                {YEST.t("recent_post")}
                                            </h5>
                                            {latest.map((lPost, lIndex) => {
                                                return (
                                                    <div
                                                        className="recent-post-single"
                                                        key={`lPost-${lIndex}`}
                                                    >
                                                        <div className="recent-post-img">
                                                            <img
                                                                src={
                                                                    lPost.thumbnail_image
                                                                }
                                                                alt={
                                                                    lPost.title
                                                                }
                                                            />
                                                        </div>
                                                        <div className="recent-post-bio">
                                                            <h6>
                                                                <NavLink
                                                                    to={`/blogs/${lPost.slug}`}
                                                                >
                                                                    {
                                                                        lPost.title
                                                                    }
                                                                </NavLink>
                                                            </h6>
                                                            <span>
                                                                <i className="far fa-clock"></i>
                                                                {
                                                                    lPost.created_at
                                                                }
                                                            </span>
                                                        </div>
                                                    </div>
                                                );
                                            })}
                                        </div>
                                        <div className="widget category">
                                            <h5 className="widget-title">
                                                {YEST.t("category_list")}
                                            </h5>
                                            <div className="category-list">
                                                {categories.map(
                                                    (cat, index) => {
                                                        return (
                                                            <div
                                                                key={`blogCat-${index}`}
                                                                className="text-capitalize"
                                                            >
                                                                <i className="far fa-angle-double-right"></i>{" "}
                                                                {cat.name}
                                                            </div>
                                                        );
                                                    }
                                                )}
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </main>
    );
};

export default BlogSingle;
