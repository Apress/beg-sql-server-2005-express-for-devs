CREATE TABLE #SharesTmp
(ShareDesc varchar(50),
Price numeric(18,5),
PriceDate datetime)
INSERT INTO #SharesTmp
SELECT s.ShareDesc,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
SELECT * FROM #SharesTmp