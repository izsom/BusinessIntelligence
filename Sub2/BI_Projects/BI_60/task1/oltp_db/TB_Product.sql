DROP TABLE IF EXISTS TB_Product;

-- Create TB_Product Table
CREATE TABLE TB_Product (
    ProductID INT  NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    ProductNumber VARCHAR(50) NOT NULL,
    StandardCost DECIMAL(13,4) NOT NULL,
    ListPrice DECIMAL(13,4) NOT NULL,
    ProductSubCategoryID INT,
    ProductModelID INT,
    SellStartDate DATE NOT NULL,
    SellEndDate DATE
);

ALTER TABLE TB_Product ADD CONSTRAINT PK_Product PRIMARY KEY (ProductID);
