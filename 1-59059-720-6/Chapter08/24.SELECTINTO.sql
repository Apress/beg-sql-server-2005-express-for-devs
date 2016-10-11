SELECT CustomerFirstName + ' ' + CustomerLastName AS [Name],
ClearedBalance,UnclearedBalance
INTO CustTemp
FROM CustomerDetails.Customers
