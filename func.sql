/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/12/2023
DESCRIPTION: FUNCTIONS
*/
SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ', ' || State || ' ' || PostalCode AS 'Mailing Address',
	length(postalcode),
	substr(postalcode, 1, 5) AS '5 DIGIT PC',
	upper(firstname) as 'First Name All Caps',
	lower(lastname) as 'lower last name'
FROM
	Customer
WHERE
	Country = 'USA'/*
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
