import React from "react";
import { NavLink } from "react-router-dom";

const EventCard = ({ event }) => {
    return (
        <div className="event-item">
            <div className="row g-0 align-items-center">
                <div className="col-md-4">
                    <div className="event-img">
                        <img
                            src={event.thumbnail_image}
                            alt={event.title}
                            className="w-100"
                        />
                    </div>
                </div>
                <div className="col-md-8">
                    <div className="event-content">
                        <span className="event-date">
                            <i className="far fa-calendar-alt"></i>{" "}
                            {event.start_date} - {event.end_date} ||{" "}
                            {event.time}
                        </span>
                        <h4 className="event-title">{event.title}</h4>
                        <span className="event-address">
                            <i className="far fa-map-marker-alt"></i>{" "}
                            {event.location}
                        </span>
                        <p>{event.short_description}</p>
                        <NavLink
                            to={`/events/${event.slug}`}
                            className="yest-btn"
                        >
                            {YEST.t("explore_more")}{" "}
                            <i className="far fa-arrow-right"></i>
                        </NavLink>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default EventCard;
