DECLARE @WrongDataType VARCHAR(20)
SET @WrongDataType = '2.0'
UPDATE CustomerDetails.Customers
   SET AddressId = @WrongDataType 
WHERE CustomerId = 1


