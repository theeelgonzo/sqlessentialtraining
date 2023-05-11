/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/11/2023
DESCRIPTION: JOINS
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	date(i.InvoiceDate) AS 'Invoice Date',
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId