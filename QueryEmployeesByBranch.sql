/* Query to get employees by branch */

SELECT employee_id AS "Employee ID", branch_name AS "Branch Name", last_name AS "Last Name", first_name AS "First Name", middle_name AS "Middle Name"
FROM styles_studio.EMPLOYEE E, styles_studio.BRANCH B
WHERE E.branch_id = B.branch_id
ORDER BY branch_name;
