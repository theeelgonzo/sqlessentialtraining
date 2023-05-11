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
	i.total,
	e.EmployeeId,
	e.LastName,
	e.FirstName
FROM
	Invoice AS i
INNER JOIN
	Customer AS c,
	Employee AS e
ON
	i.CustomerId = c.CustomerId AND
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10
