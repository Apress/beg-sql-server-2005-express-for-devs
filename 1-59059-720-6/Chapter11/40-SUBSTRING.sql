DECLARE @StringTest char(10)
SET @StringTest = 'Robin     '
SELECT SUBSTRING(@StringTest,3,LEN(@StringTest))
