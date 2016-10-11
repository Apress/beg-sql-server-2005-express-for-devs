SELECT c.CustomerFirstName + ' ' + c.CustomerLastName AS CustomerName, 
c.AccountNumber, fp.ProductName, cp.AmountToCollect, cp.Frequency, 
cp.LastCollected 
FROM CustomerDetails.Customers c
JOIN CustomerDetails.CustomerProducts cp ON cp.CustomerId = c.CustomerId
JOIN CustomerDetails.FinancialProducts fp ON fp.ProductId = cp.FinancialProductId
