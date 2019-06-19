/* Query to get number of employees by branch */

SELECT B.branch_id As "Branch ID", B.branch_name AS "Branch Name", COUNT(E.employee_id) AS "No. of Employees"
FROM styles_studio.EMPLOYEE E, styles_studio.BRANCH B
WHERE E.branch_id = B.branch_id
GROUP BY B.branch_id
ORDER BY branch_name;
