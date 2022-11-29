-- It'll perform INNER JOIN, untill JoinType is specified
/*
-- INNER JOIN: Returns only the matching rows b/w both tables. Non-matching rows are eliminated
Matching records from both + Non-matching from left table
SELECT ColumnsToSelect FROM Table1 T1
INNER JOIN Table2 T2 ON T1.MatchingColumn=T2.MatchingColumn
WHERE Condition

e.g.:
SELECT E.Name as Employee, D.Name as Department FROM dbo.Employee E
INNER JOIN dbo.Department D ON D.Id=E.DepartmentId
WHERE D.Name = 'IT'
*/

/*
-- LEFT JOIN(or LEFT OUTER JOIN): Returns the matching+non-matching rows from the left table irrespective of the entry in right table
SELECT ColumnsToSelect FROM Table1 T1
LEFT JOIN Table2 T2 ON T1.MatchingColumn=T2.MatchingColumn
WHERE Condition

e.g.: Get all records from Employee table, irrespective of whether he's in a Department or not
SELECT E.Name as Employee, D.Name as Department FROM dbo.Employee E
LEFT JOIN dbo.Department D ON D.Id=E.DepartmentId
*/

/*
-- RIGHT JOIN(or RIGHT OUTER JOIN): Returns the matching+non-matching rows from the right table irrespective of the entry in left table
Matching records from both + Non-matching from right table
SELECT ColumnsToSelect FROM Table1 T1
LEFT JOIN Table2 T2 ON T1.MatchingColumn=T2.MatchingColumn
WHERE Condition

e.g.: Get all records from Department table, irrespective of whether there exists an Employee for that department or not
SELECT E.Name as Employee, D.Name as Department FROM dbo.Employee E
RIGHT JOIN dbo.Department D ON D.Id=E.DepartmentId
*/

/*
-- FULL JOIN(or FULL OUTER JOIN): Returns the matching+non-matching rows from the both tables 
Matching rows from both tables + Non-Matching from left + Non-Matching from right
SELECT ColumnsToSelect FROM Table1 T1
FULL JOIN Table2 T2 ON T1.MatchingColumn=T2.MatchingColumn
WHERE Condition

e.g.: Get all records from Department and Employee tables
SELECT E.Name as Employee, D.Name as Department FROM dbo.Employee E
FULL JOIN dbo.Department D ON D.Id=E.DepartmentId
*/

/*
CROSS JOIN: Performs the Cartesian product of the tables involved in the Join
We need not specify ON clause for Cross joins

SELECT ColumnsToSelect FROM Table1 T1
CROSS JOIN Table2 T2
WHERE Condition

SELECT E.Name as Employee, D.Name as Department FROM dbo.Employee E
CROSS JOIN dbo.Department D
*/