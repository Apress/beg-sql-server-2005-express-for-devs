USE AdventureWorks
GO
SELECT NTILE(10) OVER(ORDER BY Department) AS NTile,
        FirstName + ' ' + LastName, Department 
  FROM HumanResources.vEmployeeDepartment
