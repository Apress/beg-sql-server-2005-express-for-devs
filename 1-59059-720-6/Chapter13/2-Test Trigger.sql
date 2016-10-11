SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE customerId=1
INSERT INTO TransactionDetails.Transactions (CustomerId,TransactionType,
Amount,RelatedProductId, DateEntered)
VALUES (1,2,200,1,GETDATE())
SELECT ClearedBalance
FROM CustomerDetails.Customers
WHERE customerId=1