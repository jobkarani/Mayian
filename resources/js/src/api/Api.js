import axios from "axios";
import { LOCAL_STORAGE_KEYS } from "../helpers/Constant";
import Helper from "../helpers/Helper";

// rapidapi.com/blog/axios-react-api-tutorial/

const api = axios.create({
    baseURL: YEST.apiPath,
});

api.interceptors.request.use(
    function (config) {
        // Do something before request is sent
        const token = Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.USER_TOKEN);
        let headers = {
            "Content-Type": "application/json",
            "Accept-Language": Helper.getFromLocalStorage(
                LOCAL_STORAGE_KEYS.LOCAL_LANG
            ),
            Authorization: `Bearer ${token}`,
        };
        config.headers = headers;
        return config;
    },
    function (error) {
        // Do something with request error
        return Promise.reject(error);
    }
);

api.interceptors.response.use(
    function (response) {
        // Any status code that lie within the range of 2xx cause this function to trigger
        // Do something with response data

        if (response.data.status === 403 || response.data.status === 401) {
            localStorage.removeItem(LOCAL_STORAGE_KEYS.USER_TOKEN);
            YEST.navigate("/user/login");
        }

        return response;
    },
    function (error) {
        // Any status codes that falls outside the range of 2xx cause this function to trigger
        // Do something with response error
        return Promise.reject(error);
    }
);

export { api };
