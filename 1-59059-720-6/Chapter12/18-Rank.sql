USE AdventureWorks
GO
SELECT ROW_NUMBER() OVER(ORDER BY Department) AS RowNum,
        RANK() OVER(ORDER BY Department) AS Ranking,
        FirstName + ' ' + LastName AS Employee, Department 
  FROM HumanResources.vEmployeeDepartment
 ORDER BY RowNum
