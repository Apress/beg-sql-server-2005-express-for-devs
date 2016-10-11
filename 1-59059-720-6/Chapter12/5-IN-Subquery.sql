SELECT *
  FROM ShareDetails.Shares
 WHERE ShareId IN (SELECT ShareId 
                     FROM ShareDetails.Shares
                    WHERE CurrentPrice > (SELECT MIN(CurrentPrice)
                                            FROM ShareDetails.Shares)
                      AND CurrentPrice < (SELECT MAX(CurrentPrice)
                                            FROM ShareDetails.Shares)) 
