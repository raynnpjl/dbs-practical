-- Create the table "staff"
CREATE TABLE staff (
	staff_no CHAR(4) PRIMARY KEY,
	staff_name VARCHAR(100) NOT NULL,
	supervisor_staff_no CHAR(4),
	dob DATE NOT NULL,
	grade VARCHAR(5) NOT NULL,
	marital_status VARCHAR(1) NOT NULL,
	pay NUMERIC(7, 2),
	allowance NUMERIC(7, 2),
	hourly_rate NUMERIC(7, 2),
	gender CHAR(1) NOT NULL,
	citizenship VARCHAR(10) NOT NULL,
	join_yr INTEGER NOT NULL,
	type_of_employment VARCHAR(2) NOT NULL,
	highest_qln VARCHAR(10) NOT NULL,
	designation VARCHAR(10) NOT NULL
);

-- Create the table "course"
-- NUMERIC & DECIMAL are both possible
CREATE TABLE course (
	crse_code VARCHAR(5) PRIMARY KEY,
	crse_name VARCHAR(100) NOT NULL,
	offered_by VARCHAR(5) NOT NULL,
	crse_fee DECIMAL(7, 2) NOT NULL,
	lab_free DECIMAL(7, 2)
);

-- Create the table "department"
CREATE TABLE department (
	dept_code VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL,
	hod CHAR(4) NOT NULL,
	no_of_staff INTEGER,
	max_staff_strength INTEGER,
	budget NUMERIC(9, 2),
	expenditure NUMERIC(9, 2),
	hod_appt_date DATE
);

-- Create the table "classroom"
CREATE TABLE classroom (
	location_id SERIAL PRIMARY KEY,
	building_name VARCHAR(50) NOT NULL,
	room_label VARCHAR(10) NOT NULL,
	floor_number INTEGER NOT NULL,
	capacity INT NOT NULL,
	description VARCHAR(100)
);

-- Drop the table "classroom"
DROP TABLE classroom;