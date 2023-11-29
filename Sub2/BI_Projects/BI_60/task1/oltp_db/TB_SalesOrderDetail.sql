DROP TABLE IF EXISTS TB_SalesOrderDetail;

-- Create TB_SalesOrderDetail Table
CREATE TABLE TB_SalesOrderDetail
(
	SalesOrderDetailID INT            NOT NULL,
	SalesOrderID       INT,
	ProductID          INT,
	OrderQty           INT            NOT NULL,
	UnitPrice          DECIMAL(13, 4) NOT NULL
);

ALTER TABLE TB_SalesOrderDetail
	ADD CONSTRAINT PK_SalesOrderDetail PRIMARY KEY (SalesOrderDetailID);
ALTER TABLE TB_SalesOrderDetail
	ADD CONSTRAINT FK_Product_SalesOrderDetail FOREIGN KEY (ProductID) REFERENCES TB_Product (ProductID);
ALTER TABLE TB_SalesOrderDetail
	ADD CONSTRAINT FK_SalesOrder_SalesOrderDetail FOREIGN KEY (SalesOrderID) REFERENCES TB_SalesOrderHeader (SalesOrderID);