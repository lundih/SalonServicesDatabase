/* Create tables */

CREATE TABLE styles_studio.BRANCH(
branch_id SERIAL,
branch_name VARCHAR(25) NOT NULL,
branch_location VARCHAR(25) NOT NULL,
PRIMARY KEY(branch_id)
);

CREATE TABLE styles_studio.CUSTOMER(
customer_id SERIAL,
first_name VARCHAR(25) NOT NULL,
middle_name VARCHAR(25),
last_name VARCHAR(25) NOT NULL,
registration_date DATE NOT NULL,
date_of_birth DATE NOT NULL,
PRIMARY KEY(customer_id)
);

CREATE TABLE styles_studio.SERVICE(
service_id SERIAL,
service_name VARCHAR(25) NOT NULL,
service_charge NUMERIC(10,2) NOT NULL,
service_duration INT NOT NULL,
PRIMARY KEY(service_id)
);

CREATE TABLE styles_studio.EMPLOYEES(
employee_id INT NOT NULL,
branch_id INT NOT NULL REFERENCES styles_studio.BRANCH(branch_id) ON DELETE CASCADE,
first_name VARCHAR(25) NOT NULL,
middle_name VARCHAR(25),
last_name VARCHAR(25) NOT NULL,
residence VARCHAR(25) NOT NULL,
email VARCHAR(25) NOT NULL,
start_date DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
PRIMARY KEY(employee_id)
);

CREATE TABLE styles_studio.APPOINTMENT(
appointment_id SERIAL,
customer_id INT NOT NULL REFERENCES styles_studio.CUSTOMER(customer_id) ON DELETE CASCADE,
employee_id INT NOT NULL REFERENCES styles_studio.EMPLOYEE(employee_id) ON DELETE CASCADE,
service_id INT NOT NULL REFERENCES styles_studio.SERVICE(service_id) ON DELETE CASCADE,
creation_date DATE NOT NULL,
booked_for_date TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
PRIMARY KEY(appointment_id)
);

CREATE TABLE styles_studio.TRANSACTION(
transaction_id SERIAL,
appointment_id INT NOT NULL REFERENCES styles_studio.APPOINTMENT(appointment_id) ON DELETE CASCADE,
transaction_date DATE NOT NULL, 
amount NUMERIC(10,2) NOT NULL,
PRIMARY KEY(transaction_id)
);

CREATE TABLE styles_studio.ATTENDANCE(
appointment_id INT NOT NULL REFERENCES styles_studio.APPOINTMENT(appointment_id) ON DELETE CASCADE,
attendance_value BOOLEAN NOT NULL DEFAULT false,
PRIMARY KEY(appointment_id)
);

CREATE TABLE styles_studio.CUSTOMER_CONTACT(
customer_id INT NOT NULL REFERENCES styles_studio.CUSTOMER(customer_id) ON DELETE CASCADE,
phone VARCHAR(15) NOT NULL,
PRIMARY KEY(customer_id, phone)
);

CREATE TABLE styles_studio.EMPLOYEE_CONTACT(
employee_id INT NOT NULL REFERENCES styles_studio.EMPLOYEE(employee_id) ON DELETE CASCADE,
phone VARCHAR(15) NOT NULL,
PRIMARY KEY(employee_id, phone)
);
