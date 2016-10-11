DECLARE @WrongDataType VARCHAR(20)
SET @WrongDataType = '4311.22'
UPDATE CustomerDetails.Customers
   SET ClearedBalance = @WrongDataType 
WHERE CustomerId = 1
