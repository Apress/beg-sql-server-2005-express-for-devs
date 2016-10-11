WITH ProdList (ProductSubcategoryID,Name,ListPrice) AS 
(
SELECT p.ProductSubcategoryID, s.Name,SUM(ListPrice) AS ListPrice
  FROM Production.Product p
  JOIN Production.ProductSubcategory s ON s.ProductSubcategoryID = 
    p.ProductSubcategoryID
  WHERE p.ProductSubcategoryID IS NOT NULL
  GROUP BY p.ProductSubcategoryID, s.Name
) 
SELECT ProductSubcategoryID,Name,MAX(ListPrice) 
  FROM ProdList 
  GROUP BY ProductSubcategoryID, Name
  HAVING MAX(ListPrice) = (SELECT MAX(ListPrice) FROM ProdList)
