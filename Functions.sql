-- To get the last inserted IDENTITY value, specific to same session and same scope(same for different files)
SELECT SCOPE_IDENTITY()

-- To get the last inserted IDENTITY value, specific to same session and any scope(same for different files)
SELECT @@IDENTITY

-- To get the last inserted IDENTITY value, specific to any session and any scope(different for different files)
SELECT IDENT_CURRENT('TableName')

-- Aggregate functions can only be applied to Numeric values
SUM(ColumnName), MAX(ColumnName), MIN(ColumnName)