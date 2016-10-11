DECLARE @StringTest char(10)
SET @StringTest = '     Robin'
SELECT 'Start-'+LTRIM(@StringTest),'Start-'+@StringTest
