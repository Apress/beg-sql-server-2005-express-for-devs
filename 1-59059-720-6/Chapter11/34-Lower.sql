DECLARE @StringTest char(10)
SET @StringTest = 'Robin     '
SELECT LOWER(LEFT(@StringTest,3))
