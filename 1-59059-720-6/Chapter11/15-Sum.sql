SELECT SUM(Amount) AS 'Amount Deposited'
  FROM TransactionDetails.Transactions
 WHERE CustomerId = 1
   AND TransactionType = 1
