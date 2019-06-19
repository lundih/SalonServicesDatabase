/* Query to get the employees that are booked between 2018-05-21 00:00 and 2018-05-22 00:00  */

SELECT E.employee_id AS "Employee ID", last_name AS "Last Name", first_name AS "First Name", branch_name AS "Branch Name", service_name AS Service, booked_for_date AS "Booked As From", booked_for_date + service_duration * interval '1 second' AS "Booked Until"
FROM styles_studio.EMPLOYEE E, styles_studio.APPOINTMENT A, styles_studio.SERVICE S, styles_studio.BRANCH B
WHERE E.employee_id = A.employee_id AND A.service_id = s.service_id AND E.branch_id = B.branch_id AND booked_for_date >= '2018-05-21 00:00' AND booked_for_date < '2018-05-22 00:00'
ORDER BY branch_name, "Booked Until";
