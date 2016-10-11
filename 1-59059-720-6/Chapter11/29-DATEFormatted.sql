DECLARE @WhatsTheDay datetime
SET @WhatsTheDay = '24 March 2006 3:00 PM'
SELECT 
DATENAME(dw,DATEPART(dd, @WhatsTheDay)) + ', ' +
CAST(DATEPART(dd,@WhatsTheDay) AS varchar(2)) + ' ' + 
DATENAME(mm,@WhatsTheDay) + ' ' +
CAST(DATEPART(yyyy,@WhatsTheDay) AS char(4))
