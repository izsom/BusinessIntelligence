-- Create TB_SalesOrderDetail Table
CREATE TABLE TB_SalesOrderDetail (
    SalesOrderDetailID INT PRIMARY KEY NOT NULL,
    SalesOrderID INT,
    ProductID INT,
    OrderQty INT NOT NULL,
    UnitPrice DECIMAL(13,4) NOT NULL,
    FOREIGN KEY (SalesOrderID) REFERENCES TB_SalesOrderHeader(SalesOrderID),
    FOREIGN KEY (ProductID) REFERENCES TB_Product(ProductID)
);