SELECT ShareDesc,CurrentPrice
FROM ShareDetails.Shares
WHERE ShareDesc <> 'FAT-BELLY.COM'

SELECT ShareDesc,CurrentPrice
FROM ShareDetails.Shares
WHERE NOT ShareDesc = 'FAT-BELLY.COM'
