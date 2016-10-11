CREATE FUNCTION TransactionDetails.ReturnTransactions
(@CustId bigint) RETURNS @Trans TABLE
(TransactionId bigint,
CustomerId bigint,
TransactionDescription nvarchar(30),
DateEntered datetime,
Amount money)
AS
BEGIN
 INSERT INTO @Trans
 SELECT TransactionId, CustomerId, TransactionDescription,
          DateEntered, Amount
   FROM TransactionDetails.Transactions t
   JOIN TransactionDetails.TransactionTypes tt ON
           tt.TransactionTypeId = t.TransactionType
  WHERE CustomerId = @CustId
	RETURN
END
GO
SELECT c.CustomerFirstName, CustomerLastName,
Trans.TransactionId,TransactionDescription,
DateEntered,Amount
FROM CustomerDetails.Customers AS c
  CROSS APPLY 
   TransactionDetails.ReturnTransactions(c.CustomerId) 
   AS Trans

