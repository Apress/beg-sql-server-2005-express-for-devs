BACKUP DATABASE ApressFinancial
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' 
WITH  DIFFERENTIAL ,  
DESCRIPTION = 'This is a differential backup',  
RETAINDAYS = 60, 
NAME = 'ApressFinancial-Differential Database Backup', 
STATS = 10, 
CHECKSUM, 
CONTINUE_AFTER_ERROR
GO
