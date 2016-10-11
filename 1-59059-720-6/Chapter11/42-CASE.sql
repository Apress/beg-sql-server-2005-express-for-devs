SET QUOTED_IDENTIFIER OFF
SELECT CustomerId,CASE WHEN CreditType = 0 THEN "Debits" ELSE "Credits" END AS TranType,SUM(Amount)
  FROM TransactionDetails.Transactions t
  JOIN TransactionDetails.TransactionTypes tt ON tt.TransActionTypeId = t.TransactionType
 WHERE t.DateEntered BETWEEN '1 Aug 2005' AND '31 Aug 2005'
 GROUP BY CustomerId,CreditType
