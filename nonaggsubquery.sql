/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/16/2023
DESCRIPTION: SUB QUERY WITHOUT AGG FUNCTIONS
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity

FROM
	Invoice
WHERE
	InvoiceDate >
(
SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId = 251
	)
