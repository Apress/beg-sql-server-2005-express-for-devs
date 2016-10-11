DELETE FROM CustomerDetails.Customers
DBCC CHECKIDENT('CustomerDetails.Customers',RESEED,1)
INSERT INTO CustomerDetails.Customers 
(CustomerTitleId,CustomerFirstName,CustomerOtherInitials,
CustomerLastName,AddressId,AccountNumber,AccountTypeId,
ClearedBalance,UnclearedBalance)
VALUES (1,'Vic',NULL,'McGlynn',111,87612311,1,4311.22,213.11)
INSERT INTO CustomerDetails.Customers 
(CustomerTitleId,CustomerLastName,CustomerFirstName,
CustomerOtherInitials,AddressId,AccountNumber,AccountTypeId,
ClearedBalance,UnclearedBalance)
VALUES (3,'Mason','Jack',NULL,145,53431993,1,437.97,-10.56)
