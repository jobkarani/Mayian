import ArrowRightAltOutlinedIcon from '@mui/icons-material/ArrowRightAltOutlined'
import ReactPaginate from 'react-paginate'

const NextIcon = () => {
    return (
        <>
            <span aria-hidden="true">
                <i className="far fa-arrow-right"></i>
            </span>
        </>
    );
}

const PrevIcon = () => {
    return (
        <>
            <span aria-hidden="true">
                <i className="far fa-arrow-left"></i>
            </span>
        </>
    );
}

const Pagination = () => {
    // Invoke when user click to request another page.
    const handlePageClick = (event) => {}
    return (
        <div className="pagination-area">
            <ReactPaginate
                breakLabel="..."
                breakClassName="me-2"
                onPageChange={handlePageClick}
                pageRangeDisplayed={3}
                pageCount={8}
                nextLabel={<NextIcon />}
                previousLabel={<PrevIcon />}
                renderOnZeroPageCount={null}
                className="pagination d-flex flex-wrap mt-5 mb-0"
                pageClassName="page-item mb-2"
                pageLinkClassName="page-link"
                nextClassName="page-item mb-2"
                nextLinkClassName="page-link"
                previousClassName="page-item mb-2"
                previousLinkClassName="page-link"
            />
        </div>
    );
}

export default Pagination
