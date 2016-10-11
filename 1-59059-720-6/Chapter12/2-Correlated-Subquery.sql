SELECT ShareId,MaximumSharePrice
FROM ShareDetails.Shares
UPDATE ShareDetails.Shares
SET MaximumSharePrice = (SELECT MAX(Price)
                                           FROM ShareDetails.SharePrices sp
                               WHERE sp.ShareId = s.ShareId)
FROM ShareDetails.Shares s
SELECT ShareId,MaximumSharePrice
FROM ShareDetails.Shares


