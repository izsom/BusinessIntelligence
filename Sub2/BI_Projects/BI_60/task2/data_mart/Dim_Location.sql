-- Create Dim_Location Table
CREATE TABLE Dim_Location (
    LocationKey INT PRIMARY KEY NOT NULL,
    Country VARCHAR(50) NOT NULL,
    Region VARCHAR(50) NOT NULL,
    TaxRate DECIMAL(13,4),
    ShipCoeff DECIMAL(13,4)
);

ALTER TABLE Dim_Location ADD CONSTRAINT PK_Dim_Location PRIMARY KEY (LocationKey);