/* GROUP BY: To group a table records by a column
-- It must always be used with an aggregate function
-- Whatever columns are used to Group the records, must be included in SELECT list as well
-- Multiple columns can be used for Grouping the records, and multiple aggregation functions can be used
*/
SELECT ColumnNameToBeGroupedOn, AggregateFunction() FROM Table_Name
GROUP BY ColumnNameToBeGroupedOn
-- e.g., To group Employee's salary as per the City from a table Employee_Salary
SELECT City, SUM(Salary) FROM Employee_Salary
GROUP BY City


