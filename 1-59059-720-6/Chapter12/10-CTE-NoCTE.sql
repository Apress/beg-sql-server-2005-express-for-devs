USE AdventureWorks
GO
SELECT p.ProductSubcategoryID, s.Name,SUM(ListPrice) AS ListPrice
  INTO #Temp1
  FROM Production.Product p
  JOIN Production.ProductSubcategory s ON s.ProductSubcategoryID =
    p.ProductSubcategoryID
 WHERE p.ProductSubcategoryID IS NOT NULL
 GROUP BY p.ProductSubcategoryID, s.Name

SELECT ProductSubcategoryID,Name,MAX(ListPrice) 
  FROM #Temp1
  GROUP BY ProductSubcategoryID, Name
HAVING MAX(ListPrice) = (SELECT MAX(ListPrice) FROM #Temp1)

DROP TABLE #Temp1
