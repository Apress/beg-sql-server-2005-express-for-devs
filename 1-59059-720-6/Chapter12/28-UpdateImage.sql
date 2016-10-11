UPDATE TransactionDetails.Transactions
SET Notes = (
SELECT PhotoToLoad.*
FROM OPENROWSET
(BULK 'c:\Temp\photo2.jpg', SINGLE_BLOB) PhotoToLoad)
WHERE transactionId = 9