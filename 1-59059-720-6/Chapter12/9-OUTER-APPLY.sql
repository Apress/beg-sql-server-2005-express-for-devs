SELECT c.CustomerFirstName, CustomerLastName,
Trans.TransactionId,TransactionDescription,
DateEntered,Amount
FROM CustomerDetails.Customers AS c
  OUTER APPLY 
   TransactionDetails.ReturnTransactions(c.CustomerId) 
   AS Trans
