const BreadCrumb = ({ children }) => {
    return (
        <div
            className="site-breadcrumb"
            style={{
                backgroundImage:
                    "url('/public/frontend/assets/img/bg/breadcrumb.jpg')",
            }}
        >
            <div className="container">
                {children}
            </div>
        </div>
    );
}

export default BreadCrumb
