-- Create TB_ProductSubCategory Table
CREATE TABLE TB_ProductSubCategory (
    ProductSubCategoryID INT PRIMARY KEY NOT NULL,
    ProductTopCategoryID INT,
    Name VARCHAR(50) NOT NULL,
    FOREIGN KEY (ProductTopCategoryID) REFERENCES TB_ProductTopCategory(ProductTopCategoryID)
);