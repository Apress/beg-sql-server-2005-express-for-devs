ALTER TABLE ShareDetails.Shares
ADD MaximumSharePrice money

DECLARE @MaxPrice money
SELECT @MaxPrice = MAX(Price)
    FROM ShareDetails.SharePrices
  WHERE ShareId = 1
SELECT @MaxPrice

UPDATE ShareDetails.Shares
SET MaximumSharePrice = @MaxPrice
WHERE ShareId = 1

