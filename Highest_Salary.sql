/* USING SUB-QUERY
-- Get Highest Salary
SELECT MAX(Salary) FROM dbo.Employee

-- Get 2nd highest salary
-- To get Nth Highest salary, replace 2 with N
SELECT TOP 1.(Salary) FROM 
(SELECT DISTINCT TOP 2.* FROM dbo.Employee ORDER BY Salary DESC)
RESULT ORDER BY Salary
*/

/*
DENSE_RANK: Assigns a rank to every row, based on the specified column
DENSE_RANK() OVER (Column_Name)

USING CTE: Get Nth highest salary(Replace 2 with N)

WITH RESULT AS (
	SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS SALARYRANK FROM dbo.Employee
)
SELECT Salary FROM RESULT WHERE RESULT.SALARYRANK=2
*/