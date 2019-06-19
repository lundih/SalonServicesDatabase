/* Query to get the available employees by branch. That is, employees who are available between 2018-05-21 00:00 and 2018-05-21 09:30:00 per branch */

SELECT E.employee_id AS "Employee ID", last_name AS "Last Name", first_name AS "First Name", middle_name AS "Middle Name"
FROM styles_studio.EMPLOYEE E, styles_studio.APPOINTMENT A, styles_studio.SERVICE S, styles_studio.BRANCH B
WHERE E.employee_id = A.employee_id AND A.service_id = s.service_id AND booked_for_date >= '2018-05-21 00:00' AND booked_for_date + service_duration * interval '1 second' >= '2018-05-21 09:30:00' AND booked_for_date <= '2018-05-21 15:30:00' AND E.branch_id = 2 AND E.branch_id = B.branch_id
GROUP BY E.employee_id;
