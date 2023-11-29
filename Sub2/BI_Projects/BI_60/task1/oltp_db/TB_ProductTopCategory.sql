DROP TABLE IF EXISTS TB_ProductTopCategory;

-- Create TB_ProductTopCategory Table
CREATE TABLE TB_ProductTopCategory
(
	ProductTopCategoryID INT            NOT NULL,
	Name                 VARCHAR(50)    NOT NULL,
	ShipSurcharge        DECIMAL(13, 4) NOT NULL
);
ALTER TABLE TB_ProductTopCategory
	ADD CONSTRAINT PK_ProductTopCategory PRIMARY KEY (ProductTopCategoryID);
