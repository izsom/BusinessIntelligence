-- Create TB_ShipMethod Table
CREATE TABLE TB_ShipMethod (
    ShipMethodID INT NOT NULL,
    ShipMethodName VARCHAR(50) NOT NULL,
    ShipBase DECIMAL(13,4) NOT NULL,
    ShipRate DECIMAL(13,4) NOT NULL
);
ALTER TABLE TB_ShipMethod ADD CONSTRAINT PK_ShipMethod PRIMARY KEY (ShipMethodID);