SELECT *
FROM TransactionDetails.Transactions
WHERE CustomerId = 1
SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE CustomerId = 1
UPDATE TransactionDetails.Transactions
SET Amount = 100
WHERE TransactionId = 5
SELECT *
FROM TransactionDetails.Transactions
WHERE CustomerId = 1
SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE CustomerId = 1