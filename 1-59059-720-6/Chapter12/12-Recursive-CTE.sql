USE AdventureWorks;
GO
WITH EmployeeReportingStructure 
(ManagerID, EmployeeID, EmployeeLevel, Level,
ManagerContactId,ManagerTitle,ManagerFirst,ManagerLast,
EmployeeTitle,EmployeeFirst,EmployeeLast)
AS
(
-- Anchor member definition
    SELECT e.ManagerID, e.EmployeeID, e.Title as EmployeeLevel, 
        0 AS Level,
        e.ContactId as ManagerContactId,
        CAST(' ' as nvarchar(8)) as ManagerTitle,
        CAST(' ' as nvarchar(50)) as ManagerFirst,
        CAST(' ' as nvarchar(50)) as ManagerLast,
        c.Title as EmployeeTitle,c.FirstName as EmployeeFirst,
        c.LastName as EmployeeLast
    FROM HumanResources.Employee AS e
    INNER JOIN Person.Contact c ON c.ContactId = e.ContactId
    WHERE ManagerID IS NULL
    UNION ALL
-- Recursive member definition
    SELECT e.ManagerID, e.EmployeeID, e.Title as EmployeeLevel, Level + 1,
        e.ContactId as ManagerContactId,
        m.Title as ManagerTitle,m.FirstName as ManagerFirst,
        m.LastName as ManagerLast,
        c.Title as EmployeeTitle,c.FirstName as EmployeeFirst,
        c.LastName as EmployeeLast
    FROM HumanResources.Employee AS e
    INNER JOIN Person.Contact c ON c.ContactId = e.ContactId
    INNER JOIN EmployeeReportingStructure  AS d
        ON d.EmployeeID = e.ManagerID 
    INNER JOIN Person.Contact m ON m.ContactId = d.ManagerContactId
)
-- Statement that executes the CTE
SELECT ManagerID, EmployeeID, 
ISNULL(ManagerTitle+' ','')+ManagerFirst+' '+ManagerLast as Manager,
EmployeeLevel, 
ISNULL(EmployeeTitle+' ','')+EmployeeFirst+' '+EmployeeLast as Employee, 
Level
FROM EmployeeReportingStructure 
ORDER BY Level,EmployeeLast,EmployeeFirst
OPTION (MAXRECURSION 4)
