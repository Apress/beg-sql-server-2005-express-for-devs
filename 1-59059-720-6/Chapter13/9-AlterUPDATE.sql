ALTER TRIGGER TransactionDetails.trgInsTransactions
ON TransactionDetails.Transactions
AFTER INSERT,UPDATE
AS
IF UPDATE(Amount) OR Update(TransactionType)
BEGIN
UPDATE CustomerDetails.Customers
SET ClearedBalance = ClearedBalance -
ISNULL((SELECT CASE WHEN CreditType = 0
THEN d.Amount * -1
ELSE d.Amount
END
FROM DELETED d
JOIN TransactionDetails.TransactionTypes tt
ON tt.TransactionTypeId = d.TransactionType
WHERE AffectCashBalance = 1),0)
FROM CustomerDetails.Customers c
JOIN DELETED d ON d.CustomerId = c.CustomerId
UPDATE CustomerDetails.Customers
SET ClearedBalance = ClearedBalance +
ISNULL((SELECT CASE WHEN CreditType = 0
THEN i.Amount * -1
ELSE i.Amount
END
FROM INSERTED i
JOIN TransactionDetails.TransactionTypes tt
ON tt.TransactionTypeId = i.TransactionType
WHERE AffectCashBalance = 1),0)
FROM CustomerDetails.Customers c
JOIN INSERTED i ON i.CustomerId = c.CustomerId
RAISERROR ('We have completed an update',10,1)
END
ELSE
RAISERROR ('Updates have been skipped',10,1)