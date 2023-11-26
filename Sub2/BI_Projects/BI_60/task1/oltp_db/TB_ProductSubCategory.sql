DROP TABLE IF EXISTS TB_ProductSubCategory;

-- Create TB_ProductSubCategory Table
CREATE TABLE TB_ProductSubCategory
(
	ProductSubCategoryID INT         NOT NULL,
	ProductTopCategoryID INT,
	Name                 VARCHAR(50) NOT NULL
);
ALTER TABLE TB_ProductSubCategory
	ADD CONSTRAINT PK_ProductSubCategory PRIMARY KEY (ProductSubCategoryID);


-- now that product sub category is created
ALTER TABLE TB_Product
	ADD CONSTRAINT FK_ProductSubCategory_Product
	FOREIGN KEY (ProductSubCategoryID)
	REFERENCES TB_ProductSubCategory (ProductSubCategoryID);
