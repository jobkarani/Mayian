import React, { useEffect } from "react";

import Box from "@mui/material/Box";
import ImageList from "@mui/material/ImageList";
import ImageListItem from "@mui/material/ImageListItem";

import Zoom from "react-medium-image-zoom";
import "react-medium-image-zoom/dist/styles.css";

const GalleryList = ({ padding, max }) => {
    const appState = YEST.useSelector((state) => state.appServiceProvider);

    useEffect(() => {}, []);

    return (
        <div className={`gallery-area ${padding}`}>
            <div className="container">
                <div className="row">
                    <Box sx={{ width: "100%" }}>
                        <ImageList variant="masonry" cols={3} gap={25}>
                            {max ? (
                                <>
                                    {appState.galleries
                                        .slice(0, max)
                                        .map((item, index) => (
                                            <ImageListItem
                                                key={`gallery-${index}`}
                                            >
                                                <div className="gallery-item">
                                                    <Zoom>
                                                        <img
                                                            src={`${item.img}?w=248&fit=crop&auto=format`}
                                                            srcSet={`${item.img}?w=248&fit=crop&auto=format&dpr=2 2x`}
                                                            alt=""
                                                            loading="lazy"
                                                            className="w-100"
                                                        />
                                                    </Zoom>
                                                </div>
                                            </ImageListItem>
                                        ))}
                                </>
                            ) : (
                                <>
                                    {appState.galleries.map((item, index) => (
                                        <ImageListItem
                                            key={`gallery-list-${index}`}
                                        >
                                            <div className="gallery-item">
                                                <Zoom>
                                                    <img
                                                        src={`${item.img}?w=248&fit=crop&auto=format`}
                                                        srcSet={`${item.img}?w=248&fit=crop&auto=format&dpr=2 2x`}
                                                        alt=""
                                                        loading="lazy"
                                                        className="w-100"
                                                    />
                                                </Zoom>
                                            </div>
                                        </ImageListItem>
                                    ))}
                                </>
                            )}
                        </ImageList>
                    </Box>
                </div>
                <div className="load-more d-none text-center mt-5">
                    <a href="#" className="yest-btn">
                        Load More <i className="far fa-sync"></i>
                    </a>
                </div>
            </div>
        </div>
    );
};

export default GalleryList;
