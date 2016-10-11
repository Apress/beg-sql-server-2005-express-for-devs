SELECT s.ShareDesc,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  LEFT OUTER JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
