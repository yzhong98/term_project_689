USE term_test;

CREATE TABLE MonthlyRoomReservationSummary (
    month_id INT,
    location_id INT,
    average_rent FLOAT,
    total_counts INT,
);



CREATE TABLE Job (
    location_id INT,
    job_description_id INT,
    company_id INT,
    expiry INT,
    listed_time INT,
    med_salary DECIMAL(10, 2)
);

CREATE TABLE List (
    location_id INT,
    time_id INT,
    room_id INT,
    host_id INT,
    review_rating DECIMAL(3, 2)
);

/* CREATE TABLE Host (
    id INT PRIMARY KEY,
    host_name VARCHAR(255),
    host_total_listings_count INT
); */

CREATE TABLE Room (
	room_id INT,
	airbnb_key VARCHAR(255),
    room_type VARCHAR(255),
    price DECIMAL(10, 2),
    effect_date DATE,
    expire_date DATE,
    current_flag CHAR(1)
);

CREATE TABLE Location (
    id INT PRIMARY KEY,
    country VARCHAR(255),
    state VARCHAR(255),
    city VARCHAR(255)
);

CREATE TABLE Company (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    company_size INT
);

CREATE TABLE DayTime (
    id INT PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

CREATE TABLE MonthTime (
    id INT PRIMARY KEY,
    year INT,
    quarter INT,
    month INT
);

CREATE TABLE Job_description (
    id INT PRIMARY KEY,
    work_type VARCHAR(255),
    experience_level_required VARCHAR(255),
    sponsored CHAR(1)
);
