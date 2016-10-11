ALTER TABLE CustomerDetails.CustomerProducts 
WITH NOCHECK 
ADD CONSTRAINT CK_CustProds_AmtCheck 
CHECK ((AmountToCollect > 0))
GO
