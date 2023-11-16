-- Create TB_SalesOrderHeader Table
CREATE TABLE TB_SalesOrderHeader (
    SalesOrderID INT PRIMARY KEY NOT NULL,
    SalesOrderNumber VARCHAR(30) NOT NULL,
    OrderDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ShipDate DATE,
    OrderStatusID INT,
    CustomerID INT,
    BillToAddressID INT,
    ShipToAddressID INT,
    ShipMethodID INT,
    FOREIGN KEY (OrderStatusID) REFERENCES TB_OrderStatus(OrderStatusID),
    FOREIGN KEY (CustomerID) REFERENCES TB_Customer(CustomerID),
    FOREIGN KEY (BillToAddressID) REFERENCES TB_Address(AddressID),
    FOREIGN KEY (ShipToAddressID) REFERENCES TB_Address(AddressID),
    FOREIGN KEY (ShipMethodID) REFERENCES TB_ShipMethod(ShipMethodID)
);