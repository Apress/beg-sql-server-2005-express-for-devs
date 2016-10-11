SELECT sp.ShareId, s.ShareDesc,MIN(Price) MinPrice, Max(Price) MaxPrice
  FROM ShareDetails.SharePrices sp
  LEFT JOIN ShareDetails.Shares s ON s.ShareId = sp.ShareId
 WHERE sp.ShareId < 9999
 GROUP BY ALL sp.ShareId, s.ShareDesc
HAVING MIN(Price) > 10
