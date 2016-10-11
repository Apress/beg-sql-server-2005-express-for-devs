USE AdventureWorks
GO
SELECT productID,UnitPriceDiscount,SUM(linetotal) 
  FROM Sales.SalesOrderDetail 
  WHERE productID IN (776,711,747)
  GROUP BY productID,UnitPriceDiscount
  ORDER BY productID,UnitPriceDiscount
