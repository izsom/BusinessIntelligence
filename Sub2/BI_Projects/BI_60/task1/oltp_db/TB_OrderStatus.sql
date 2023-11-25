-- Create TB_OrderStatus Table
CREATE TABLE TB_OrderStatus (
    OrderStatusID INT NOT NULL,
    OrderStatusName VARCHAR(50) NOT NULL
);
ALTER TABLE TB_OrderStatus ADD CONSTRAINT PK_OrderStatus PRIMARY KEY (OrderStatusID);