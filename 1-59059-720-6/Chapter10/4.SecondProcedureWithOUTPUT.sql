-- ===============================================
-- Create stored procedure with OUTPUT parameters
-- ===============================================
-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'CustomerDetails'
     AND SPECIFIC_NAME = N'apf_CustBalances' 
)
    DROP PROCEDURE CustomerDetails.apf_CustBalances
GO

CREATE PROCEDURE CustomerDetails.apf_CustBalances
    @CustId int, 
    @ClearedBalance money OUTPUT, 
    @UnclearedBalance money OUTPUT
AS
SELECT @ClearedBalance = ClearedBalance, @UnclearedBalance = UnclearedBalance 
  FROM Customers
 WHERE CustomerId = @CustId
    RETURN @@Error
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
DECLARE @ClearedBalance Money, @UnclearedBalance Money
DECLARE @RetVal int

EXECUTE @RetVal=CustomerDetails.apf_CustBalances 1, @ClearedBalance OUTPUT, 
@UnclearedBalance OUTPUT

SELECT @RetVal AS ReturnValue, @ClearedBalance AS ClearedBalance, 
@UnclearedBalance AS UnclearedBalance
GO

