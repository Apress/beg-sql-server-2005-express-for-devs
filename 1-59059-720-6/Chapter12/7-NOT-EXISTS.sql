SELECT *
  FROM ShareDetails.Shares s
 WHERE NOT EXISTS (SELECT 1 
                     FROM TransactionDetails.Transactions t
                    WHERE t.RelatedShareId = s.ShareId)
