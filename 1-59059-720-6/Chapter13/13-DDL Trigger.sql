CREATE TRIGGER trgSprocs
ON DATABASE
FOR CREATE_PROCEDURE, ALTER_PROCEDURE, DROP_PROCEDURE
AS
IF DATEPART(hh,GETDATE()) > 9 AND DATEPART(hh,GETDATE()) < 17
BEGIN
DECLARE @Message nvarchar(max)
SELECT @Message =
'Completing work during core hours. Trying to release - '
+ EVENTDATA().value
('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')
RAISERROR (@Message, 16, 1)
ROLLBACK
END