SELECT s.ShareDesc,sp.Price,sp.PriceDate
  FROM ShareDetails.SharePrices sp
  FULL OUTER JOIN ShareDetails.Shares s ON sp.ShareId = s.ShareId
