-- Create TB_ProductTopCategory Table
CREATE TABLE TB_ProductTopCategory (
    ProductTopCategoryID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    ShipSurcharge DECIMAL(13,4) NOT NULL
);
ALTER TABLE TB_ProductSubCategory ADD CONSTRAINT PK_ProductSubCategory PRIMARY KEY (ProductSubCategoryID);