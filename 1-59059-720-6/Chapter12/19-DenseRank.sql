USE AdventureWorks
GO
SELECT ROW_NUMBER() OVER(ORDER BY Department) AS RowNum,
        DENSE_RANK() OVER(ORDER BY Department) AS Ranking,
        CONVERT(varchar(25),FirstName + ' ' + LastName), Department 
  FROM HumanResources.vEmployeeDepartment
 ORDER BY RowNum 
