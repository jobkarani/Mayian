import React from "react";
import { Navigate } from "react-router-dom";
import Helper from "../src/helpers/Helper";

const UserRoute = ({ children }) => {
    return Helper.isLoggedIn() ? children : <Navigate to="/user/login" />;
};

export default UserRoute;
