SELECT CustomerId,
CASE  
WHEN ClearedBalance < 0 THEN 'OverDrawn'
WHEN ClearedBalance > 0 THEN ' In Credit'
ELSE 'Flat'
END, ClearedBalance
FROM CustomerDetails.Customers
