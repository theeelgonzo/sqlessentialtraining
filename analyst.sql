/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/18/2023
DESCRIPTION: FIND FINANCIAL DISCREPANCY IN 2011-2012
*/

SELECT
	e.FirstName as 'employee first name',
	e.LastName as 'employee last name',
	c.FirstName,
	c.LastName,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c,
	Employee AS e
ON
	i.CustomerId = c.CustomerId
	AND
	e.EmployeeId = c.SupportRepId
WHERE
	(InvoiceDate > '2011&'
	AND
	InvoiceDate < '2013&')
	AND
	total >
		(SELECT
			round(avg(total), 2)  AS 'avg transaction amount'
		FROM
			Invoice
		WHERE
			InvoiceDate > '2011&'
			AND
			InvoiceDate < '2013&')
ORDER BY
	i.total DESC