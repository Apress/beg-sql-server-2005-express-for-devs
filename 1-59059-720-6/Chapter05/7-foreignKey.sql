USE ApressFinancial
GO
ALTER TABLE TransactionDetails.Transactions
WITH NOCHECK
ADD CONSTRAINT FK_Transactions_Shares
FOREIGN KEY(RelatedShareId)
REFERENCES ShareDetails.Shares(ShareId)