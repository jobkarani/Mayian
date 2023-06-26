import GalleryList from "../../gallery/components/GalleryList";

const GalleryAreaSection = () => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);
    return (
        <>
            <div className="gallery-area-section pt-100">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-6 mx-auto">
                            <div className="yest-heading text-center">
                                <span className="yest-title-heading">
                                    {YEST.t("from_archive")}
                                </span>
                                <h2 className="yest-title">
                                    {YEST.t("browse_our_gallery")}
                                </h2>
                            </div>
                        </div>
                    </div>
                    <GalleryList max={6} />
                </div>
            </div>
        </>
    );
};

export default GalleryAreaSection;
