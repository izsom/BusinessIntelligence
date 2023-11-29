-- Create Dim_Product Table
CREATE TABLE Dim_Product (
    ProductKey INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    ProductModelName VARCHAR(50) NOT NULL,
    ProductSubCategoryName VARCHAR(50) NOT NULL,
    ProductTopCategoryName VARCHAR(50) NOT NULL,
    StandardCost DECIMAL(13,4) NOT NULL,
    ListPrice DECIMAL(13,4) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    ProductStatus VARCHAR(50) NOT NULL
);

