DROP TABLE IF EXISTS TB_SalesOrderHeader;
SET FOREIGN_KEY_CHECKS = 0;
-- from country sql

-- Create TB_SalesOrderHeader Table
CREATE TABLE TB_SalesOrderHeader
(
	SalesOrderID     INT         NOT NULL,
	SalesOrderNumber VARCHAR(30) NOT NULL,
	OrderDate        DATE        NOT NULL,
	DueDate          DATE        NOT NULL,
	ShipDate         DATE,
	OrderStatusID    INT,
	CustomerID       INT,
	BillToAddressID  INT,
	ShipToAddressID  INT,
	ShipMethodID     INT
);

ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT PK_SalesOrderHeader PRIMARY KEY (SalesOrderID);
ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT FK_OrderStatus_SalesOrderHeader FOREIGN KEY (OrderStatusID) REFERENCES TB_OrderStatus (OrderStatusID);
ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT FK_Customer_SalesOrderHeader FOREIGN KEY (CustomerID) REFERENCES TB_Customer (CustomerID);
ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT FK_BillToAddress_SalesOrderHeader FOREIGN KEY (BillToAddressID) REFERENCES TB_Address (AddressID);
ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT FK_ShipToAddress_SalesOrderHeader FOREIGN KEY (ShipToAddressID) REFERENCES TB_Address (AddressID);
ALTER TABLE TB_SalesOrderHeader
	ADD CONSTRAINT FK_ShipMethod_SalesOrderHeader FOREIGN KEY (ShipMethodID) REFERENCES TB_ShipMethod (ShipMethodID);
