/*
CREATED BY: JORDAN GODWIN
CREATE DATE: 05/17/2023
DESCRIPTION: VIEWS
*/

CREATE VIEW V_AvgTotal AS 
SELECT
	ROUND(AVG(total), 2) AS [Average Total]
FROM
	Invoice