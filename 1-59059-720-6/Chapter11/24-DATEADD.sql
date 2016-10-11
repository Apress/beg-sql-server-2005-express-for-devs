DECLARE @OldTime datetime
SET @OldTime = '24 March 2006 3:00 PM'
SELECT DATEADD(hh,4,@OldTime)
