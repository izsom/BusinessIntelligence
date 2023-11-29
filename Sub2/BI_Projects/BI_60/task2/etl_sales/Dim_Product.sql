-- Populate Dim_Product Table
INSERT INTO Dim_Product (
    ProductKey,
    ProductName,
    ProductModelName,
    ProductSubCategoryName,
    ProductTopCategoryName,
    StandardCost,
    ListPrice,
    StartDate,
    EndDate,
    ProductStatus
)
SELECT
    p.ProductID AS ProductKey,
    p.ProductName,
    pm.ProductModelName,
    psc.Name AS ProductSubCategoryName,
    ptc.Name AS ProductTopCategoryName,
    p.StandardCost,
    p.ListPrice,
    p.SellStartDate,
    p.SellEndDate,
    CASE WHEN p.SellEndDate IS NULL OR p.SellEndDate > '2021-09-30' THEN 'Current' ELSE 'Discontinued' END AS ProductStatus
FROM
    TB_Product p
JOIN
    TB_ProductModel pm ON p.ProductModelID = pm.ProductModelID
JOIN
    TB_ProductSubCategory psc ON p.ProductSubCategoryID = psc.ProductSubCategoryID
JOIN
    TB_ProductTopCategory ptc ON psc.ProductTopCategoryID = ptc.ProductTopCategoryID;