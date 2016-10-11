ALTER DATABASE ApressFinancial
SET RECOVERY FULL
GO
BACKUP DATABASE ApressFinancial TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak'
WITH NAME = 'ApressFinancial-Full Database Backup' ,
SKIP,
NOUNLOAD,
STATS = 10
GO
BACKUP LOG ApressFinancial
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak'
WITH NAME = 'ApressFinancial-Transaction Log Backup' ,
SKIP,
NOUNLOAD,
STATS = 10