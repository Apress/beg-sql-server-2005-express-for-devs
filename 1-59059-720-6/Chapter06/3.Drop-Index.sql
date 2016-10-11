USE ApressFinancial
GO
DROP INDEX IX_TransactionTypes ON TransactionDetails.TransactionTypes
GO
CREATE UNIQUE CLUSTERED INDEX IX_TransactionTypes 
ON TransactionDetails.TransactionTypes 
(
    TransactionTypeId ASC
) WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF,
DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF,
ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) 
ON [PRIMARY]
GO
