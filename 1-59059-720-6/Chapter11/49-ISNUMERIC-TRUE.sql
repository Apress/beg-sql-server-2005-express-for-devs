DECLARE @IsNum char(10)
SET @IsNum = '1234      '
SELECT ISNUMERIC(@IsNum)
