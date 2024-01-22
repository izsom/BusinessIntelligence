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

ALTER TABLE TB_ProductSubCategory
	ADD CONSTRAINT FK_ProductTopCategory_ProductSubCategory
	FOREIGN KEY (ProductTopCategoryID)
	REFERENCES TB_ProductTopCategory (ProductTopCategoryID);