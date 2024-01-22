INSERT INTO BI_BikesDW_39.Fact_InternetSales (SalesOrderLineNumber, SalesOrderNumber, OrderDateKey, OrderDate, DueDateKey, DueDate, ShipDateKey, ShipDate, ProductKey, CustomerKey, ShipToLocationKey, OrderStatus, ShipMethod, OrderQty, UnitPrice, OrderLineTotal, OrderLineProfit, OrderLineTaxAmt, OrderLineShippingCost)
SELECT     
	CONCAT('SOL', soh.SalesOrderId,'-', sod.SalesOrderDetailId) AS SalesOrderLineNumber,
    soh.SalesOrderNumber AS SalesOrderNumber,
    10000 * YEAR(soh.OrderDate) + 100 * MONTH(soh.OrderDate) + DAY(soh.OrderDate) AS OrderDateKey,
	soh.OrderDate AS OrderDate,
    10000 * YEAR(soh.DueDate) + 100 * MONTH(soh.DueDate) + DAY(soh.DueDate) AS DueDateKey,
	soh.DueDate AS DueDate,
    10000 * YEAR(soh.ShipDate) + 100 * MONTH(soh.ShipDate) + DAY(soh.ShipDate) AS ShipDateKey,
	soh.ShipDate AS ShipDate,
    sod.ProductID AS ProductKey ,
    soh.CustomerID AS CustomerKey ,
    a.CountryID AS ShipToLocationKey ,
    os.OrderStatusName AS OrderStatus ,
    sm.ShipMethodName AS ShipMethod ,
    sod.OrderQty AS OrderQty ,
    sod.UnitPrice AS UnitPrice ,
    (sod.OrderQty * sod.UnitPrice) AS OrderLineTotal ,
    ((sod.OrderQty * sod.UnitPrice) - (sod.OrderQty * p.StandardCost)) AS OrderLineProfit ,
    ((sod.OrderQty * sod.UnitPrice) * c.TaxRate) AS OrderLineTaxAmt ,
    (ptc.ShipSurcharge + sm.ShipBase + (sod.OrderQty * sm.ShipRate * c.ShipCoeff)) AS OrderLineShippingCost
FROM BI_Bikes_39.TB_SalesOrderDetail sod
JOIN BI_Bikes_39.TB_SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN BI_Bikes_39.TB_Product p ON sod.ProductID = p.ProductID
JOIN BI_Bikes_39.TB_Customer cust ON soh.CustomerID = cust.CustomerID
JOIN BI_Bikes_39.TB_Address a ON soh.ShipToAddressID = a.AddressID
JOIN BI_Bikes_39.TB_Country c ON a.CountryID = c.CountryID
JOIN BI_Bikes_39.TB_OrderStatus os ON soh.OrderStatusID = os.OrderStatusID
JOIN BI_Bikes_39.TB_ShipMethod sm ON soh.ShipMethodID = sm.ShipMethodID
JOIN BI_Bikes_39.TB_ProductSubCategory psc ON p.ProductSubCategoryID = psc.ProductSubCategoryID
JOIN BI_Bikes_39.TB_ProductTopCategory ptc ON psc.ProductTopCategoryID = ptc.ProductTopCategoryID
--WHERE p.SellEndDate IS NULL OR p.SellEndDate > '2021-09-30';
-- braucht man das?  10000 * YEAR(IFNULL(soh.ShipDate, soh.OrderDate)) + 100 * MONTH(IFNULL(soh.ShipDate, soh.OrderDate)) + DAY(IFNULL(soh.ShipDate, soh.OrderDate))