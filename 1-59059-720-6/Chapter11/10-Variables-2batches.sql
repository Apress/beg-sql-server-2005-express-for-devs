DECLARE @MyDate datetime, @CurrPriceInCents money
SET @MyDate = GETDATE()
SELECT @CurrPriceInCents = CurrentPrice * 100
  FROM ShareDetails.Shares
 WHERE ShareId = 2
GO
SELECT @MyDate,@CurrPriceInCents
