IF EXISTS(SELECT TABLE_NAME FROM   INFORMATION_SCHEMA.VIEWS 
      WHERE  TABLE_NAME = N'vw_CustFinProducts'
        AND  TABLE_SCHEMA = N'CustomerDetails')
    DROP VIEW CustomerDetails.vw_CustFinProducts
GO
CREATE VIEW CustomerDetails.vw_CustFinProducts WITH SCHEMABINDING 
AS
SELECT c.CustomerFirstName + ' ' + c.CustomerLastName AS CustomerName, 
c.AccountNumber, fp.ProductName, cp.AmountToCollect, cp.Frequency, 
cp.LastCollected 
FROM CustomerDetails.Customers c
JOIN CustomerDetails.CustomerProducts cp ON cp.CustomerId = c.CustomerId
JOIN CustomerDetails.FinancialProducts fp ON fp.ProductId = cp.FinancialProductId
