-- Make an existing column Nullable
--ALTER TABLE dbo.Person
--ALTER COLUMN GenderId INT NULL

/*
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME FOREIGN KEY (Child_Table_ColumnName)
 REFERENCES REFERENCED_TABLE_NAME(Parent_Table_ColumnName);

e.g.: 
ALTER TABLE dbo.Employee 
ADD CONSTRAINT fk_department_id FOREIGN KEY (DepartmentId)
REFERENCES dbo.Department(Id)
*/

/* DEFAULT CONSTRAINT
-- Add DEFAULT CONSTRAINT to an existing column, for inserting a default value if no value is provided
ALTER TABLE dbo.Person
ADD CONSTRAINT DF_Person_GenderId 
DEFAULT 4 FOR  GenderId

-- Add a new constraint, with default value, to an existing table
ALTER TABLE TABLE_NAME
ADD CONSTRAINT COLUMN_NAME DATA_TYPE NULL/NOT NULL
CONSTRAINT CONSTRAINT_NAME DEFAULT DEFAULT_VALUE

-- DROP A CONSTRAINT
ALTER TABLE TABLE_NAME
DROP CONSTRAINT CONSTRAINT_NAME
*/

/* CHECK CONSTRAINT: Perform Check(s) on the values while entering
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME CHECK CONSTRAINT_VALUE

-- Add Check constraint to Person table for Age column, to verify Age is b/w 0 and 130
ALTER TABLE dbo.Person
ADD CONSTRAINT ck_Person_Age CHECK (Age >= 0 AND AGE <= 130)
*/

/* UNIQUE CONSTRAINT: To identify rows uniquely using multiple column values
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME UNIQUE(COLUMN1, COLUMN2...)
*/

/* ADD A NEW COLUMN TO AN EXISTING TABLE
ALTER TABLE TABLE_NAME
ADD COLUMN_NAME DATA_TYPE NULL/NOT NULL
*/

/* To start seeding values from 0
DBCC CHECKIDENT(TABLE_NAME, RESEED, NEW_VALUE_TO_START_FROM)
*/