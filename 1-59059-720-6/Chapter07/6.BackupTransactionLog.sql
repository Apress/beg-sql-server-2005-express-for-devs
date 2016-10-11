BACKUP LOG ApressFinancial
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\ApressFinancial.bak' 
WITH NAME = 'ApressFinancial-Transaction Log Backup', 
SKIP, 
NOUNLOAD,  
STATS = 10
