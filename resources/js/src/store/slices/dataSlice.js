import { createSlice } from "@reduxjs/toolkit";

const initialState = {
    nextLoading: false,
    // cottages
    loading: false,
    cottages: [],
    nextCottagesLink: null,
    bestCottages: [],
    // services
    servicesLoading: false,
    services: [],
    nextServicesLink: null,
    bestServices: [],
    // events
    eventsLoading: false,
    events: [],
    nextEventsLink: null,
    // blogs
    blogsLoading: false,
    blogs: [],
    nextBlogsLink: null,
};

export const dataSlice = createSlice({
    name: "dataSlice",
    initialState,
    reducers: {
        loading: (state) => {
            state.loading = !state.loading;
        },
        nextLoading: (state) => {
            state.nextLoading = !state.nextLoading;
        },
        // cottages
        cottages: (state, action) => {
            state.cottages = action.payload.data;
            state.nextCottagesLink = action.payload.nextPage;
        },
        nextCottages: (state, action) => {
            state.cottages = [...state.cottages, ...action.payload.data];
            state.nextCottagesLink = action.payload.nextPage;
        },
        bestCottages: (state, action) => {
            state.bestCottages = action.payload;
        },
        // services
        servicesLoading: (state) => {
            state.servicesLoading = !state.servicesLoading;
        },
        services: (state, action) => {
            state.services = action.payload.data;
            state.nextServicesLink = action.payload.nextPage;
        },
        nextServices: (state, action) => {
            state.services = [...state.services, ...action.payload.data];
            state.nextServicesLink = action.payload.nextPage;
        },
        bestServices: (state, action) => {
            state.bestServices = action.payload;
        },
        // events
        eventsLoading: (state) => {
            state.eventsLoading = !state.eventsLoading;
        },
        events: (state, action) => {
            state.events = action.payload.data;
            state.nextEventsLink = action.payload.nextPage;
        },
        nextEvents: (state, action) => {
            state.events = [...state.events, ...action.payload.data];
            state.nextEventsLink = action.payload.nextPage;
        },
        // blogs
        blogsLoading: (state) => {
            state.blogsLoading = !state.blogsLoading;
        },
        blogs: (state, action) => {
            state.blogs = action.payload.data;
            state.nextBlogsLink = action.payload.nextPage;
        },
        nextBlogs: (state, action) => {
            state.blogs = [...state.blogs, ...action.payload.data];
            state.nextBlogsLink = action.payload.nextPage;
        },
    },
});

// Action creators are generated for each case reducer function
export const {
    loading,
    nextLoading,
    // cottages
    cottages,
    nextCottages,
    bestCottages,
    // services
    servicesLoading,
    services,
    nextServices,
    bestServices,
    // events
    eventsLoading,
    events,
    nextEvents,
    // blogs
    blogsLoading,
    blogs,
    nextBlogs,
} = dataSlice.actions;

export default dataSlice.reducer;
