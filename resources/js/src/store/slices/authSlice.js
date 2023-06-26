import { createSlice } from "@reduxjs/toolkit";
import { LOCAL_STORAGE_KEYS } from "../../helpers/Constant";
import Helper from "../../helpers/Helper";

// get auth user
const getAuthUser = () => {
    return Helper.getFromLocalStorage(LOCAL_STORAGE_KEYS.USER);
};

const initialState = {
    loginLoading: false,
    authUser: getAuthUser(),
    tempUserId: Helper.getFromLocalStorage(
        LOCAL_STORAGE_KEYS.TEMP_USER_ID,
        String(Date.now()) + Math.floor(Math.random() * 100)
    ),
    credentials: {
        email: "",
        phone: "",
        password: "",
        password_confirmation: "",
        code: "",
        name: "",
    },
    bookings: [],
    nextBookingsLink: null,
    nextLoading: false,
};

export const authSlice = createSlice({
    name: "authSlice",
    initialState,
    reducers: {
        loginLoading: (state) => {
            state.loginLoading = !state.loginLoading;
        },
        setCredentials: (state, action) => {
            state.credentials = action.payload;
        },
        resetCredentials: (state) => {
            state.credentials = {
                email: "",
                phone: "",
                password: "",
                code: "",
                name: "",
            };
        },
        setAuthUser: (state, action) => {
            state.authUser = action.payload;
            Helper.setLocalStorage(LOCAL_STORAGE_KEYS.USER, action.payload);
        },
        setUserToken: (state, action) => {
            Helper.setLocalStorage(
                LOCAL_STORAGE_KEYS.USER_TOKEN,
                action.payload
            );
        },
        bookings: (state, action) => {
            state.bookings = action.payload.data;
            state.nextBookingsLink = action.payload.nextPage;
        },
        nextBookings: (state, action) => {
            state.bookings = [...state.bookings, ...action.payload.data];
            state.nextBookingsLink = action.payload.nextPage;
        },
        nextLoading: (state) => {
            state.nextLoading = !state.nextLoading;
        },
    },
});

// Action creators are generated for each case reducer function
export const {
    loginLoading,
    setCredentials,
    resetCredentials,
    setUserToken,
    setAuthUser,
    bookings,
    nextBookings,
    nextLoading,
} = authSlice.actions;

export default authSlice.reducer;
