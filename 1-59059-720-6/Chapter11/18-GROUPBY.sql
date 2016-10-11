  SELECT ShareId, MIN(Price) MinPrice, Max(Price) MaxPrice
  FROM ShareDetails.SharePrices 
 WHERE ShareId < 9999
 GROUP BY ShareId
