-- =========================================
-- Create table template
-- =========================================
USE ApressFinancial
GO
IF OBJECT_ID('TransactionDetails.TransactionTypes', 'U') IS NOT NULL
DROP TABLE TransactionDetails.TransactionTypes
GO
CREATE TABLE TransactionDetails.TransactionTypes(
TransactionTypeId int IDENTITY(1,1) NOT NULL,
TransactionDescription nvarchar(30) NOT NULL,
CreditType bit NOT NULL
)
GO