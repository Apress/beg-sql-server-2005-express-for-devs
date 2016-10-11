SELECT pt.Discount,ISNULL([711],0.00) As Product711,
    ISNULL([747],0.00) As Product747,ISNULL([776],0.00) As Product776
FROM
(SELECT sod.LineTotal, sod.ProductID, sod.UnitPriceDiscount as Discount
   FROM Sales.SalesOrderDetail sod) so
PIVOT
(
SUM(so.LineTotal)
FOR so.ProductID IN ([776], [711], [747])
) AS pt
ORDER BY pt.Discount
