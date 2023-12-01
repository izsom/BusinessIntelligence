-- Populate Fact_InternetSales Table
INSERT INTO Fact_InternetSales (
    SalesOrderLineNumber,
    SalesOrderNumber,
    OrderDateKey,
    OrderDate,
    DueDateKey,
    DueDate,
    ShipDateKey,
    ShipDate,
    ProductKey,
    CustomerKey,
    ShipToLocationKey,
    OrderStatus,
    ShipMethod,
    OrderQty,
    UnitPrice,
    OrderLineTotal,
    OrderLineProfit,
    OrderLineTaxAmt,
    OrderLineShippingCost
)
SELECT
    CONCAT('SOL',soh.SalesOrderID, '-',sod.SalesOrderDetailID) AS SalesOrderLineNumber,
    soh.SalesOrderNumber as SalesOrderNumber,
    10000 * YEAR(soh.OrderDate) + 100 * MONTH(soh.OrderDate) + DAY(soh.OrderDate) AS OrderDateKey,
    soh.OrderDate as OrderDate,
    10000 * YEAR(soh.DueDate) + 100 * MONTH(soh.DueDate) + DAY(soh.DueDate) AS DueDateKey,
    soh.DueDate,
    CASE WHEN soh.ShipDate IS NOT NULL THEN 10000 * YEAR(soh.ShipDate) + 100 * MONTH(soh.ShipDate) + DAY(soh.ShipDate) END AS ShipDateKey,
    soh.ShipDate as ShipDate,
    sod.ProductID AS ProductKey,
    soh.CustomerID AS CustomerKey,
    a.CountryID AS ShipToLocationKey,
    os.OrderStatusName AS OrderStatus,
    sm.ShipMethodName AS ShipMethod,
    sod.OrderQty as OrderQty,
    sod.UnitPrice as UnitPrice,
    (sod.OrderQty * sod.UnitPrice) AS OrderLineTotal,
    ((sod.OrderQty * sod.UnitPrice) - (sod.OrderQty * p.StandardCost)) AS OrderLineProfit,
    (ptc.ShipSurcharge + sm.ShipBase + (sod.OrderQty * sm.ShipRate * c.ShipCoeff)) AS OrderLineShippingCost,
    ((sod.OrderQty * sod.UnitPrice) * c.TaxRate) AS OrderLineTaxAmt
FROM TB_SalesOrderHeader soh
JOIN TB_SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN TB_Product p ON sod.ProductID = p.ProductID
JOIN TB_OrderStatus os ON soh.OrderStatusID = os.OrderStatusID
JOIN TB_ShipMethod sm ON soh.ShipMethodID = sm.ShipMethodID
JOIN TB_Address a ON soh.ShipToAddressID = a.AddressID
JOIN TB_Country c ON a.CountryID = c.CountryID
JOIN TB_ProductSubCategory psc ON p.ProductSubCategoryID = psc.ProductSubCategoryID
JOIN TB_ProductTopCategory ptc ON psc.ProductTopCategoryID = ptc.ProductTopCategoryID
