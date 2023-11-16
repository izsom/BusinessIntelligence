-- Create TB_Product Table
CREATE TABLE TB_Product (
    ProductID INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    ProductNumber VARCHAR(50) NOT NULL,
    StandardCost DECIMAL(13,4) NOT NULL,
    ListPrice DECIMAL(13,4) NOT NULL,
    ProductSubCategoryID INT,
    ProductModelID INT,
    SellStartDate DATE NOT NULL,
    SellEndDate DATE,
    FOREIGN KEY (ProductSubCategoryID) REFERENCES TB_ProductSubCategory(ProductSubCategoryID),
    FOREIGN KEY (ProductModelID) REFERENCES TB_ProductModel(ProductModelID)
);