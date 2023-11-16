-- Create TB_ProductTopCategory Table
CREATE TABLE TB_ProductTopCategory (
    ProductTopCategoryID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    ShipSurcharge DECIMAL(13,4) NOT NULL
);