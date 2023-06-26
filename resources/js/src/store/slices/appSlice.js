import { createSlice } from "@reduxjs/toolkit";

const initialState = {
    loading: false,
    languages: YEST.languages || [],
    currencies: YEST.currencies || [],
    sliders: window.yestSetting.generalSettings.sliders || [],
    topFeatures: window.yestSetting.generalSettings.topFeatures || [],
    testimonials: window.yestSetting.generalSettings.testimonials || [],
    partners: window.yestSetting.generalSettings.partners || [],
    galleries: window.yestSetting.generalSettings.galleries || [],
    topbar: {
        topbar_helpline_number:
            window.yestSetting.generalSettings.topbar_helpline_number || "",
        topbar_email: window.yestSetting.generalSettings.topbar_email || "",
        topbar_facebook_link:
            window.yestSetting.generalSettings.topbar_facebook_link || "",
        topbar_twitter_link:
            window.yestSetting.generalSettings.topbar_twitter_link || "",
        topbar_instagram_link:
            window.yestSetting.generalSettings.topbar_instagram_link || "",
        topbar_linked_in_link:
            window.yestSetting.generalSettings.topbar_linked_in_link || "",
    },
    header: {
        logo: window.yestSetting.generalSettings.appLogo || "",
        logoDark: window.yestSetting.generalSettings.appLogoDark || "",
    },
    footer: {
        logo: window.yestSetting.generalSettings.appLogo || "",
        footer_about: window.yestSetting.generalSettings.footer_about || "",
        footer_address: window.yestSetting.generalSettings.footer_address || "",
        footer_phone: window.yestSetting.generalSettings.footer_phone || "",
        footer_email: window.yestSetting.generalSettings.footer_email || "",
        footer_pages: window.yestSetting.generalSettings.footer_pages || [],
        copyright_text: window.yestSetting.generalSettings.copyright_text || "",
    },
    // search cottages
    cottageLoading: false,
    dateRange: [new Date(), new Date(Date.now() + 3600 * 1000 * 24)],
    rooms: [
        { label: "1", value: 1 },
        { label: "2", value: 2 },
        { label: "3", value: 3 },
        { label: "4", value: 4 },
        { label: "5", value: 5 },
        { label: "5+", value: 6 },
    ],
    selectedRoomIndex: 0,
    adults: [
        { label: "1", value: 1 },
        { label: "2", value: 2 },
        { label: "3", value: 3 },
        { label: "4", value: 4 },
        { label: "5", value: 5 },
        { label: "5+", value: 6 },
    ],
    selectedAdultIndex: 0,
    children: [
        { label: "1", value: 1 },
        { label: "2", value: 2 },
        { label: "3", value: 3 },
        { label: "4", value: 4 },
        { label: "5", value: 5 },
        { label: "5+", value: 6 },
    ],
    selectedChildIndex: 0,
};

export const appSlice = createSlice({
    name: "appSlice",
    initialState,
    reducers: {
        loading: (state) => {
            state.loading = !state.loading;
        },
        cottageLoading: (state, action) => {
            state.cottageLoading = action.payload;
        },
        dateRange: (state, action) => {
            state.dateRange = action.payload;
        },
        selectedRoomIndex: (state, action) => {
            let room = state.rooms.find(
                (roomObj) => roomObj.value === action.payload.value
            );
            state.selectedRoomIndex = state.rooms.indexOf(room);
        },
        selectedAdultIndex: (state, action) => {
            let adult = state.adults.find(
                (adultObj) => adultObj.value === action.payload.value
            );
            state.selectedAdultIndex = state.adults.indexOf(adult);
        },
        selectedChildIndex: (state, action) => {
            let child = state.children.find(
                (childObj) => childObj.value === action.payload.value
            );
            state.selectedChildIndex = state.children.indexOf(child);
        },
    },
});

// Action creators are generated for each case reducer function
export const {
    loading,
    cottageLoading,
    dateRange,
    selectedRoomIndex,
    selectedAdultIndex,
    selectedChildIndex,
} = appSlice.actions;

export default appSlice.reducer;
