CREATE PROCEDURE CustomerDetails.apf_CustMovement @CustId bigint, 
@FromDate datetime, @ToDate datetime
AS
BEGIN
DECLARE @RunningBal money, @StillCalc Bit, @LastTran bigint

SELECT @StillCalc = 1, @LastTran = 0, @RunningBal = 0
WHILE @StillCalc = 1
BEGIN
   SELECT TOP 1 @RunningBal = @RunningBal + CASE 
                WHEN tt.CreditType = 1 THEN t.Amount
                ELSE t.Amount * -1 END,
                @LastTran = t.TransactionId
     FROM CustomerDetails.Customers c
     JOIN TransactionDetails.Transactions t ON t.CustomerId = c.CustomerId
     JOIN TransactionDetails.TransactionTypes tt ON tt.TransactionTypeId = t.TransactionType
    WHERE t.TransactionId > @LastTran
      AND tt.AffectCashBalance = 1
      AND DateEntered BETWEEN @FromDate AND @ToDate
    ORDER BY DateEntered
    IF @@ROWCOUNT > 0
      -- Perform some interest calculation here…
       CONTINUE
    ELSE
       BREAK
END

SELECT @RunningBal AS 'End Balance'
END
GO
INSERT INTO TransactionDetails.Transactions 
(CustomerId,TransactionType,DateEntered,Amount,RelatedProductId)
VALUES (1,1,'1 Aug 2005',100.00,1)
INSERT INTO TransactionDetails.Transactions 
(CustomerId,TransactionType,DateEntered,Amount,RelatedProductId)
VALUES (1,1,'3 Aug 2005',75.67,1)
INSERT INTO TransactionDetails.Transactions 
(CustomerId,TransactionType,DateEntered,Amount,RelatedProductId)
VALUES (1,2,'5 Aug 2005',35.20,1)
INSERT INTO TransactionDetails.Transactions 
(CustomerId,TransactionType,DateEntered,Amount,RelatedProductId)
VALUES (1,2,'6 Aug 2005',20.00,1)
EXEC  CustomerDetails.apf_CustMovement 1,'1 Aug 2005','31 Aug 2005'

