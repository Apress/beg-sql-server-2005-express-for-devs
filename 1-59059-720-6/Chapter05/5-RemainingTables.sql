USE ApressFinancial
GO
CREATE TABLE CustomerDetails.CustomerProducts(
CustomerFinancialProductId bigint NOT NULL,
CustomerId bigint NOT NULL,
FinancialProductId bigint NOT NULL,
AmountToCollect money NOT NULL,
Frequency smallint NOT NULL,
LastCollected datetime NOT NULL,
LastCollection datetime NOT NULL,
Renewable bit NOT NULL
)
ON [PRIMARY]
GO
CREATE TABLE CustomerDetails.FinancialProducts(
ProductId bigint NOT NULL,
ProductName nvarchar(50) NOT NULL
) ON [PRIMARY]
GO
CREATE TABLE ShareDetails.SharePrices(
SharePriceId bigint IDENTITY(1,1) NOT NULL,
ShareId bigint NOT NULL,
Price numeric(18, 5) NOT NULL,
PriceDate datetime NOT NULL
) ON [PRIMARY]
GO
CREATE TABLE ShareDetails.Shares(
ShareId bigint IDENTITY(1,1) NOT NULL,
ShareDesc nvarchar(50) NOT NULL,
ShareTickerId nvarchar(50) NULL,
CurrentPrice numeric(18, 5) NOT NULL
) ON [PRIMARY]
GO