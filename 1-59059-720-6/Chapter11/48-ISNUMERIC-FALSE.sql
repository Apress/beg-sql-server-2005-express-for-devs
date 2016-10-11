DECLARE @IsNum char(10)
SET @IsNum = 'Robin     '
SELECT ISNUMERIC(@IsNum)
