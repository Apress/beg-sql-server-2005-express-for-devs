USE ApressFinancial
GO
CREATE INDEX IX_CustomerProducts
ON CustomerDetails.CustomerProducts
(
CustomerId
)
GO