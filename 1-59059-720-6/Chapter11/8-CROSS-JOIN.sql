SELECT s.ShareDesc,sp.Price,sp.PriceDate
  FROM ShareDetails.SharePrices sp
  CROSS JOIN ShareDetails.Shares s
