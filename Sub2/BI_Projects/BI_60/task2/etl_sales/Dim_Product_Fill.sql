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
) SELECT
	p.ProductID         AS ProductKey,
	p.ProductName       AS ProductName,
	pm.ProductModelName AS ProductModelName,
	psc.Name            AS ProductSubCategoryName,
	ptc.Name            AS ProductTopCategoryName,
	p.StandardCost      AS StandardCost,
	p.ListPrice         AS ListPrice,
	p.SellStartDate     AS StartDate,
	-- p.SellEndDate       AS EndDate,
	IF(STRCMP(p.SellEndDate, '0000-00-00'), NULL, p.SellEndDate)
		AS EndDate,
	IF(p.SellEndDate IS NULL OR p.SellEndDate > '2021-09-30', 'Current', 'Discontinued')
		AS ProductStatus

FROM TB_Product p
	JOIN
		TB_ProductModel pm ON p.ProductModelID = pm.ProductModelID
	JOIN
		TB_ProductSubCategory psc ON p.ProductSubCategoryID = psc.ProductSubCategoryID
	JOIN
		TB_ProductTopCategory ptc ON psc.ProductTopCategoryID = ptc.ProductTopCategoryID;