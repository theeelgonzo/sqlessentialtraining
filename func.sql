/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/12/2023
DESCRIPTION: FUNCTIONS
*/
SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ', ' || State || ' ' || PostalCode AS 'Mailing Address'
FROM
	Customer
WHERE
	Country = 'USA'
