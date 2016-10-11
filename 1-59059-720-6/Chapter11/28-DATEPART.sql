DECLARE @WhatsTheDay datetime
SET @WhatsTheDay = '24 March 2006 3:00 PM'
SELECT DATEPART(dd, @WhatsTheDay)
