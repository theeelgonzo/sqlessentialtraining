/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/12/2023
DESCRIPTION: CALACULATE  AGE OF EMPLOYEES
*/

SELECT
	FirstName,
	LastName,
	BirthDate,
	strftime('%Y-%m-%d',Birthdate) as 'Birthdate no time code',
	strftime('%Y -%m-%d','now') - 	strftime('%Y-%m-%d',Birthdate) as 'Age'
FROM
	Employee
