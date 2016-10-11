ALTER TABLE CustomerDetails.CustomerProducts ADD CONSTRAINT
	CK_CustProd_LastColl CHECK ((LastCollection>=LastCollected))
GO

