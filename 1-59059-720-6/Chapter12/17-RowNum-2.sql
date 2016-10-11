USE AdventureWorks
GO
SELECT ROW_NUMBER() 
  OVER(PARTITION BY SUBSTRING(LastName,1,1) 
  ORDER BY LastName) AS RowNum, FirstName + ' ' + LastName 
  FROM HumanResources.vEmployee  
 WHERE JobTitle = 'Production Technician - WC60'
 ORDER BY LastName 
