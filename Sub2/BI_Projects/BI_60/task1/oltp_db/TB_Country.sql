-- prevents the error
-- Cannot drop table referenced by a foreign key constraint on table

-- SET FOREIGN_KEY_CHECKS = 0;
-- this is re-enabled on the last script sales order header


DROP TABLE IF EXISTS TB_SalesOrderDetail; 
DROP TABLE IF EXISTS TB_SalesOrderHeader;
DROP TABLE IF EXISTS TB_ShipMethod;
DROP TABLE IF EXISTS TB_Customer;
DROP TABLE IF EXISTS TB_Person;
DROP TABLE IF EXISTS TB_Product;
DROP TABLE IF EXISTS TB_ProductSubCategory;
DROP TABLE IF EXISTS TB_ProductModel;
DROP TABLE IF EXISTS TB_ProductTopCategory;
DROP TABLE IF EXISTS TB_Address;
DROP TABLE IF EXISTS TB_Country;
DROP TABLE IF EXISTS TB_OrderStatus;


-- DROP TABLE IF EXISTS TB_Country;

CREATE TABLE TB_Country
(
	CountryID INT         NOT NULL,
	Country   VARCHAR(50) NOT NULL,
	Region    VARCHAR(50) NOT NULL,
	TaxRate   DECIMAL(13, 4),
	ShipCoeff DECIMAL(13, 4)
);

ALTER TABLE TB_Country
	ADD CONSTRAINT PK_Country PRIMARY KEY (CountryID);

