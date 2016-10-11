-- Dont forget the FILE = 5 may be different
RESTORE LOG [ApressFinancial] 
FROM  DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' WITH  FILE = 5,  
NOUNLOAD,  STATS = 10
