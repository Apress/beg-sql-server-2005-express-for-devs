USE AdventureWorks
GO
SELECT ROW_NUMBER() OVER(ORDER BY LastName) AS RowNum,
    FirstName + ' ' + LastName 
  FROM HumanResources.vEmployee  
  WHERE JobTitle = 'Production Technician - WC60'
  ORDER BY LastName 
