CREATE TABLE BI_BikesDW_39.Dim_Product (
  ProductKey INT,
  ProductName VARCHAR(50),
  ProductModelName VARCHAR(50),
  ProductSubCategoryName VARCHAR(255),
  ProductTopCategoryName VARCHAR(255),
  StandardCost DECIMAL(13, 4),
  ListPrice DECIMAL(13, 4),
  StartDate DATE,
  EndDate DATE,
  ProductStatus VARCHAR(50),
  CONSTRAINT PK_DimProduct PRIMARY KEY (ProductKey)
);