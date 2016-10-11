SELECT CustomerFirstName + ' ' + CustomerLastName AS [Name]
FROM CustomerDetails.Customers
WHERE [Name] LIKE '%n%'
