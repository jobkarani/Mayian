import { LOCAL_STORAGE_KEYS } from "../src/helpers/Constant";
import Helper from "../src/helpers/Helper";

class AuthRepository {
    // subscribe
    static subscribe = (formData) => {
        return YEST.api.post("/subscribe", formData);
    };

    // signup
    static signup = (formData) => {
        return YEST.api.post("/auth/signup", formData);
    };

    // signin
    static signIn = (formData) => {
        return YEST.api.post("/auth/login", formData);
    };

    // verify
    static verify = (formData) => {
        return YEST.api.post("/auth/verify", formData);
    };

    // resendCode
    static resendCode = (formData) => {
        return YEST.api.post("/auth/resend-code", formData);
    };

    // sendPasswordResetCode
    static sendPasswordResetCode = (formData) => {
        return YEST.api.post("/auth/password/create", formData);
    };

    // reset password
    static resetPassword = (formData) => {
        return YEST.api.post("/auth/password/reset", formData);
    };

    // update information
    static updateInfo = (formData) => {
        return YEST.api.post("/auth/update-info", formData);
    };

    // update password
    static updatePassword = (formData) => {
        return YEST.api.post("/auth/update-password", formData);
    };

    // update avatar
    static updateAvatar = (formData) => {
        return YEST.api.post("/auth/update-avatar", formData);
    };

    // sign out
    static signOut = async () => {
        await YEST.api.post("/auth/signout").then((response) => {
            YEST.notify("success", YEST.t(response.data.message));
        });
        Helper.removeLocalStorage(LOCAL_STORAGE_KEYS.USER_TOKEN);
        Helper.removeLocalStorage(LOCAL_STORAGE_KEYS.USER);
        YEST.navigate("/");
    };

    // bookings
    static getBookings = () => {
        return YEST.api.get("/bookings/all-bookings");
    };

    // next bookings
    static getNextBookings = (url) => {
        return YEST.api.get(url);
    };

    // recent bookings
    static getRecentBookings = () => {
        return YEST.api.get("/bookings/recent-bookings");
    };
}

export default AuthRepository;
