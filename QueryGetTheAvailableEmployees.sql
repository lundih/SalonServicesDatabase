/* Query to get the available employees 2018-05-21 00:00 and 2018-05-21 15:30:00
i.e. employees that hav not been booked between those times*/

SELECT E.employee_id AS "Employee ID", last_name AS "Last Name", first_name AS "First Name", middle_name AS "Middle name"
FROM styles_studio.EMPLOYEE E, styles_studio.APPOINTMENT A, styles_studio.SERVICE S
WHERE E.employee_id = A.employee_id AND A.service_id = s.service_id AND booked_for_date >= '2018-05-21 00:00' AND booked_for_date + service_duration * interval '1 second' >= '2018-05-21 09:30:00' AND booked_for_date <= '2018-05-21 15:30:00'
GROUP BY E.employee_id;
