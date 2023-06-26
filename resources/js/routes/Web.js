import React from "react";
import { Navigate, Route, Routes } from "react-router-dom";
import About from "../src/pages/about/About";
import ForgotPassword from "../src/pages/auth/ForgotPassword";

import Login from "../src/pages/auth/Login";
import Registration from "../src/pages/auth/Registration";
import Verification from "../src/pages/auth/Verification";
import SetNewPassword from "../src/pages/auth/SetNewPassword";
import Blog from "../src/pages/blog/Blog";
import Gallery from "../src/pages/gallery/Gallery";
import Home from "../src/pages/home/Home";
import Room from "../src/pages/room/Room";
import Service from "../src/pages/service/Service";
import Dashboard from "../src/pages/customer/Dashboard";
import Bookings from "../src/pages/customer/Bookings";
import Wishlist from "../src/pages/customer/Wishlist";
import UpdateProfile from "../src/pages/customer/UpdateProfile";
import UserRoute from "./UserRoute";
import Helper from "../src/helpers/Helper";
import RoomSingle from "../src/pages/room/RoomSingle";
import ServiceSingle from "../src/pages/service/ServiceSingle";
import Event from "../src/pages/events/Event";
import EventSingle from "../src/pages/events/EventSingle";
import BlogSingle from "../src/pages/blog/BlogSingle";
import QuickLink from "../src/pages/quickLinks/QuickLink";

const Web = () => {
    return (
        <Routes>
            <Route path="/" element={<Home />} />

            {/* auth routes */}
            <Route
                path="/user/login"
                element={!Helper.isLoggedIn() ? <Login /> : <Navigate to="/" />}
            />
            <Route
                path="/user/registration"
                element={
                    !Helper.isLoggedIn() ? (
                        <Registration />
                    ) : (
                        <Navigate to="/" />
                    )
                }
            />
            <Route
                path="/user/verification"
                element={
                    !Helper.isLoggedIn() ? (
                        <Verification />
                    ) : (
                        <Navigate to="/" />
                    )
                }
            />
            <Route
                path="/user/forgot-password"
                element={
                    !Helper.isLoggedIn() ? (
                        <ForgotPassword />
                    ) : (
                        <Navigate to="/" />
                    )
                }
            />
            <Route
                path="/user/set-new-password"
                element={
                    !Helper.isLoggedIn() ? (
                        <SetNewPassword />
                    ) : (
                        <Navigate to="/" />
                    )
                }
            />
            {/* auth routes */}

            {/* public pages */}
            {/* <Route path="/about" element={<About />} /> */}

            <Route path="/cottages" element={<Room />} />
            <Route path="/cottages/:slug" element={<RoomSingle />} />

            <Route path="/services" element={<Service />} />
            <Route path="/services/:slug" element={<ServiceSingle />} />

            <Route path="/blogs" element={<Blog />} />
            <Route path="/blogs/:slug" element={<BlogSingle />} />

            <Route path="/gallery" element={<Gallery />} />

            <Route path="/events" element={<Event />} />
            <Route path="/events/:slug" element={<EventSingle />} />

            <Route path="/links/:slug" element={<QuickLink />} />

            {/* public pages */}

            {/* customer routes */}
            <Route
                path="/user/dashboard"
                element={
                    <UserRoute>
                        <Dashboard />
                    </UserRoute>
                }
            />
            <Route
                path="/user/bookings"
                element={
                    <UserRoute>
                        <Bookings />
                    </UserRoute>
                }
            />
            <Route
                path="/user/wishlist"
                element={
                    <UserRoute>
                        <Wishlist />
                    </UserRoute>
                }
            />
            <Route
                path="/user/update-profile"
                element={
                    <UserRoute>
                        <UpdateProfile />
                    </UserRoute>
                }
            />
            {/* customer routes */}
        </Routes>
    );
};

export default Web;
