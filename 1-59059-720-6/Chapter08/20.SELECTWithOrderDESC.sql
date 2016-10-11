SELECT LEFT(CustomerFirstName + ' ' + CustomerLastName,50) AS 'Name',
ClearedBalance Balance
FROM CustomerDetails.Customers
ORDER BY Balance DESC
