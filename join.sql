/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/11/2023
DESCRIPTION: JOINS
*/

SELECT
	*
FROM
	Invoice
INNER JOIN
	Customer
ON
	Invoice.CustomerId = Customer.CustomerId