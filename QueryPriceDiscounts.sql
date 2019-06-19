/* Query to calculate discounted prices */

SELECT service_name AS "Service Name", service_charge AS "Usual Price", TRUNC(service_charge * .80, 2) AS "Discounted Price"
FROM styles_studio.SERVICE S;
