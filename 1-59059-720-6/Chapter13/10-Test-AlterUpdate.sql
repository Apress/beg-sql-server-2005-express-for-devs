SELECT *
FROM TransactionDetails.Transactions
WHERE TransactionId=5
SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE CustomerId = 1
UPDATE TransactionDetails.Transactions
SET DateEntered = DATEADD(dd,-1,DateEntered)
WHERE TransactionId = 5
SELECT *
FROM TransactionDetails.Transactions
WHERE TransactionId=5
SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE CustomerId = 1