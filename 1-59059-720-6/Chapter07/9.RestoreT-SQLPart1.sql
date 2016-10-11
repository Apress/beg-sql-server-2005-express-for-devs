USE Master
GO
-- Dont forget the FILE = 3 may be different
RESTORE DATABASE [ApressFinancial] 
FROM  DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' WITH  FILE = 3, 
NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 10
GO
