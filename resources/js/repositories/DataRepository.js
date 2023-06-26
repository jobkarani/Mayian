class DataRepository {
    // cottages
    static getCottages = () => {
        return YEST.api.get("/all-cottages");
    };

    // next cottages
    static getNextCottages = (url) => {
        return YEST.api.get(url);
    };

    // filter cottages
    static getFilteredCottages = (data = null) => {
        return YEST.api.get("/filter-cottages", { params: data });
    };

    // best cottages
    static getBestCottages = () => {
        return YEST.api.get("/best-cottages");
    };

    // get cottage details
    static getCottageDetails = (slug, data) => {
        return YEST.api.get(`/cottages/${slug}`, { params: data });
    };

    // book cottage
    static bookCottage = (data) => {
        return YEST.api.post(`/bookings/book`, data);
    };

    // services
    static getServices = () => {
        return YEST.api.get("/all-services");
    };

    // next services
    static getNextServices = (url) => {
        return YEST.api.get(url);
    };

    // best services
    static getBestServices = () => {
        return YEST.api.get("/best-services");
    };

    // get service details
    static getServiceDetails = (slug) => {
        return YEST.api.get(`/services/${slug}`);
    };

    // events
    static getEvents = () => {
        return YEST.api.get("/all-events");
    };

    // next events
    static getNextEvents = (url) => {
        return YEST.api.get(url);
    };

    // get events details
    static getEventDetails = (slug) => {
        return YEST.api.get(`/events/${slug}`);
    };

    // blogs
    static getBlogs = () => {
        return YEST.api.get("/all-blogs");
    };

    // next Blogs
    static getNextBlogs = (url) => {
        return YEST.api.get(url);
    };

    // get Blogs details
    static getBlogDetails = (slug) => {
        return YEST.api.get(`/blogs/${slug}`);
    };
}

export default DataRepository;
