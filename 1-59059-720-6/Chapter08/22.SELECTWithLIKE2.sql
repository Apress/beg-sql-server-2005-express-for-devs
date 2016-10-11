SELECT CustomerFirstName + ' ' + CustomerLastName AS [Name]
FROM CustomerDetails.Customers
WHERE CustomerFirstName + ' ' + CustomerLastName LIKE '%n%'
