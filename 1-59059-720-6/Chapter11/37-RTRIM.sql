DECLARE @StringTest char(10)
SET @StringTest = 'Robin'
SELECT @StringTest+'-End',RTRIM(@StringTest)+'-End'
