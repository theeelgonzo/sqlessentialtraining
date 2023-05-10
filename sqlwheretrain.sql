/*
How many customers purchased two songs at $0.99 each?
*/

/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/10/2023
DESCRIPTION: Customers who purchased two songs at $0.99 each
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total IN(1.98, 3.96)
ORDER BY
	InvoiceDate