DECLARE @ValueToUpdate VARCHAR(30)
SET @ValueToUpdate = 'McGlynn'
UPDATE CustomerDetails.Customers
   SET CustomerLastName = @ValueToUpdate,
       ClearedBalance = ClearedBalance + UnclearedBalance ,
       UnclearedBalance = 0
 WHERE CustomerLastName = 'Brodie'

