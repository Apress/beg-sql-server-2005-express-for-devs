INSERT INTO TransactionDetails.TransactionTypes
(TransactionDescription,CreditType,AffectCashBalance)
VALUES ('Deposit',1,1)
INSERT INTO TransactionDetails.TransactionTypes
(TransactionDescription,CreditType,AffectCashBalance)
VALUES ('Withdrawal',0,1)
INSERT INTO TransactionDetails.TransactionTypes
(TransactionDescription,CreditType,AffectCashBalance)
VALUES ('BoughtShares',1,0) 
SELECT TransactionDescription,
CASE CreditType
WHEN 0 THEN 'Debiting the account'
WHEN 1 THEN 'Crediting the account'
END
FROM TransactionDetails.TransactionTypes
