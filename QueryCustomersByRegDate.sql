/* Query to get customers by registration date */

SELECT customer_id As "Customer ID", last_name AS "Last Name", first_name AS "First Name", middle_name AS "Middle Name", registration_date AS "Registration Date"
FROM styles_studio.CUSTOMER
WHERE registration_date < '2018-01-01'
ORDER BY registration_date;
