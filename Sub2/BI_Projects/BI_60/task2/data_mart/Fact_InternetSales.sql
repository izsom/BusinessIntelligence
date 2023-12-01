-- Create Fact_InternetSales Table
CREATE TABLE Fact_InternetSales
(
	SalesOrderLineNumber  VARCHAR(50) NOT NULL,
	SalesOrderNumber      VARCHAR(30)             NOT NULL,
	OrderDateKey          INT                     NOT NULL,
	OrderDate             DATE                    NOT NULL,
	DueDateKey            INT                     NOT NULL,
	DueDate               DATE                    NOT NULL,
	ShipDateKey           INT,
	ShipDate              DATE,
	ProductKey            INT                     NOT NULL,
	CustomerKey           INT                     NOT NULL,
	ShipToLocationKey     INT,
	OrderStatus           VARCHAR(50)             NOT NULL,
	ShipMethod            VARCHAR(50)             NOT NULL,
	OrderQty              INT                     NOT NULL,
	UnitPrice             DECIMAL(13, 4)          NOT NULL,
	OrderLineTotal        DECIMAL(13, 4)          NOT NULL,
	OrderLineProfit       DECIMAL(13, 4)          NOT NULL,
	OrderLineTaxAmt       DECIMAL(13, 4)          NOT NULL,
	OrderLineShippingCost DECIMAL(13, 4)          NOT NULL
);
Alter table Fact_InternetSales	ADD CONSTRAINT PK_FactInternetSales	PRIMARY KEY (SalesOrderLineNumber);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_Customer_FactInternetSales	FOREIGN KEY (CustomerKey) REFERENCES Dim_Customer (CustomerKey);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_ShipToLocation_FactInternetSales FOREIGN KEY (ShipToLocationKey) REFERENCES Dim_Location (LocationKey);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_OrderDate_FactInternetSales FOREIGN KEY (OrderDateKey) REFERENCES Dim_Date(DateKey);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_DueDate_FactInternetSales FOREIGN KEY (DueDateKey) REFERENCES Dim_Date(DateKey);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_ShipDate_FactInternetSales FOREIGN KEY (ShipDateKey) REFERENCES Dim_Date(DateKey);
ALTER TABLE Fact_InternetSales ADD CONSTRAINT FK_Product_FactInternetSales FOREIGN KEY (ProductKey) REFERENCES Dim_Product(ProductKey);