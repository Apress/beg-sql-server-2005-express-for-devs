ALTER TABLE CustomerDetails.CustomerProducts WITH NOCHECK
   ADD CONSTRAINT DF_CustProd_Renewable 
   DEFAULT (0) 
   FOR Renewable
