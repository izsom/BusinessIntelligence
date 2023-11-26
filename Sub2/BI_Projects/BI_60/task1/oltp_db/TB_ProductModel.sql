DROP TABLE IF EXISTS TB_ProductModel;

-- Create TB_ProductModel Table
CREATE TABLE TB_ProductModel (
    ProductModelID INT NOT NULL,
    ProductModelName VARCHAR(50) NOT NULL
);
ALTER TABLE TB_ProductModel ADD CONSTRAINT PK_ProductModel PRIMARY KEY (ProductModelID);
ALTER TABLE TB_Product ADD CONSTRAINT FK_ProductModel_Product FOREIGN KEY (ProductModelID) REFERENCES TB_ProductModel(ProductModelID);