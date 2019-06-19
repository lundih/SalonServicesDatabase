/* Query to retrieve transactions by date */

SELECT transaction_id AS "Transaction ID", last_name AS "Last Name", first_name AS "First Name", middle_name AS "Middle Name", transaction_date As "Transaction Date", amount AS "Amount"
FROM styles_studio.TRANSACTION T, styles_studio.APPOINTMENT A, styles_studio.CUSTOMER C
WHERE T.appointment_id = A.appointment_id AND C.customer_id = A.customer_id AND transaction_date = '2018-05-18';
