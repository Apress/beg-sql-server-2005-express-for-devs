SELECT DISTINCT s.ShareDesc
  FROM ShareDetails.Shares s
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
