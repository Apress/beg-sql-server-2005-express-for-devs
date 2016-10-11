CREATE TRIGGER trgInsTransactions
ON TransactionDetails.Transactions
AFTER INSERT
AS
UPDATE CustomerDetails.Customers
SET ClearedBalance = ClearedBalance +
(SELECT CASE WHEN CreditType = 0
THEN i.Amount * -1
ELSE i.Amount
END
FROM INSERTED i
JOIN TransactionDetails.TransactionTypes tt
ON tt.TransactionTypeId = i.TransactionType
WHERE AffectCashBalance = 1)
FROM CustomerDetails.Customers c
JOIN INSERTED i ON i.CustomerId = c.CustomerId
GO