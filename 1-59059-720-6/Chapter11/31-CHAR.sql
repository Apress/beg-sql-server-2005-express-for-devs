DECLARE @StringTest char(10)
SET @StringTest = ASCII('Robin     ')
SELECT CHAR(@StringTest)
