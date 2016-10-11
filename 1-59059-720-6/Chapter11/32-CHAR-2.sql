DECLARE @StringTest int
SET @StringTest = ASCII('Robin     ')
SELECT CHAR(@StringTest)
