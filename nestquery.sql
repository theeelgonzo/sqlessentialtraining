/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/16/2023
DESCRIPTION: NESTED QUERIES OR SUB QUERIES*/


	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total <
			(select avg(total) from Invoice)
ORDER BY
	total DESC
