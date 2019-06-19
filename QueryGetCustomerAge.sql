/* Queries to list customers by age 
This queries allow us to find those who are below and above the age of 21 allowing 
us to give discounts to those who are beneath the threshold age */

SELECT customer_id AS "Customer ID", last_name AS "Last Name", first_name AS "First Name", DATE_PART('year', NOW()) - DATE_PART('year', date_of_birth) As "Age"
FROM styles_studio.CUSTOMER
WHERE DATE_PART('year', NOW()) - DATE_PART('year', date_of_birth) <= 21;

SELECT customer_id AS "Customer ID", last_name AS "Last Name", first_name AS "First Name", DATE_PART('year', NOW()) - DATE_PART('year', date_of_birth) As "Age"
FROM styles_studio.CUSTOMER
WHERE DATE_PART('year', NOW()) - DATE_PART('year', date_of_birth) >21;
