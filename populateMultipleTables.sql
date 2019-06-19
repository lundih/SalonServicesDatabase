/* Population of tables */

INSERT INTO styles_studio.BRANCH(branch_name, branch_location)
VALUES
('Arsenal', 'Nairobi'),
('Liverpool', 'Nakuru'),
('Chelsea', 'Mombasa'),
('Manchester', 'Nairobi'),
('Tottenham', 'Eldoret');

INSERT INTO styles_studio.SERVICE(service_name, service_charge, service_duration)
VALUES
('Blow Dry', 200, 900),
('Hair Cut', 250, 2100),
('Manicure', 500, 2400),
('Pedicure', 700, 2400),
('Massage', 2500, 3600);

INSERT INTO styles_studio.CUSTOMER(first_name, middle_name, last_name, registration_date, date_of_birth)
VALUES('Bruce', 'Thomas', 'Wayne', '2018-01-30','1981-01-01'),
('Diana', 'Pince', '2017-05-30','1999-05-01'),
('Tessa', 'Thompson', 'Jane', '2018-05-25','1989-01-01'),
('Clark', 'Joseph', 'Kent', '2019-01-30','2001-01-01'),
('Natasha', 'Romanoff', 'Johanson', '2017-01-30','1985-01-01'),
('Wendy', 'Winkles', 'Jean', '2019-02-28','1987-01-01'),
('Christine', 'Taylor', 'Jasmine', '2018-12-30','1995-01-01');
INSERT INTO styles_studio.CUSTOMER(first_name, last_name, registration_date, date_of_birth)
VALUES('John', 'Jones', '2018-01-20','1991-5-01');

INSERT INTO styles_studio.EMPLOYEE(employee_id, branch_id, first_name, middle_name, last_name, residence, email, start_date, gender)
VALUES
(34842759, 1, 'Clark', 'Thomas', 'Wayne', 'Place A', 'wayne@example.com', '2018-01-30','Male'),
(22478953, 2, 'Bruce', 'Thomas', 'Wayne', 'Place B', 'bruce@example.com', '2018-01-01','Male'),
(29874124, 3, 'Diana', 'Prince', 'Lois', 'Place C', 'lois@example.com', '2016-01-01','Female'),
(23574142, 4, 'Diana', 'Princess', 'Loislane', 'Place D', 'diana@example.com', '2017-01-01','Female'),
(30625963, 1, 'John', 'Wick', 'Reeves', 'Place C', 'reeves@example.com', '2017-01-01','Male'),
(32478236, 5, 'Margaret', 'Magdalene', 'Miriam', 'Place E', 'lynn@example.com', '2015-01-01','Female');
INSERT INTO styles_studio.EMPLOYEE(employee_id, branch_id, first_name, last_name, residence, email, start_date, gender)
VALUES(28754137, 3, 'Carl', 'Johnson', 'Place Q', 'carl@example.com', '2017-12-01', 'Male'); 

INSERT INTO styles_studio.APPOINTMENT(customer_id, employee_id, service_id, creation_date, booked_for_date)
VALUES
(1, 22478953, 2, '2018-5-18', '2018-5-21 09:00'),
(4, 34842759, 1, '2018-5-18', '2018-5-21 09:00'),
(5, 32478236, 5, '2018-5-18', '2018-5-20 10:00'),
(1, 22478953, 4, '2018-5-18', '2018-5-29 12:00'),
(2, 30625963, 3, '2018-5-19', '2018-5-21 09:00'),
(1, 22478953, 5, '2018-5-19', '2018-5-21 14:00'),
(7, 28754137, 1, '2018-5-20', '2018-5-21 17:00');

INSERT INTO styles_studio.TRANSACTION(appointment_id, transaction_date, amount)
VALUES
(8, '2018-5-18', 250),
(9, '2018-5-18', 200),
(10, '2018-5-18', 2500);

INSERT INTO styles_studio.ATTENDANCE(appointment_id, attendance_value)
VALUES
(1, true),
(2, true);

INSERT INTO styles_studio.CUSTOMER_CONTACT(customer_id, phone)
VALUES
(1, '0700112233'),
(2, '0711223344');

INSERT INTO styles_studio.EMPLOYEE_CONTACT(employee_id, phone)
VALUES
(34842759, '0721212121'),
(22478953, '0711001100');
