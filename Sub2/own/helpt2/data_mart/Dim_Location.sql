CREATE TABLE BI_BikesDW_39.Dim_Location (
  LocationKey INT,
  Country VARCHAR(50),
  Region VARCHAR(50),
  TaxRate DECIMAL(13, 4), -- Assuming tax rate is a percentage
  ShipCoeff DECIMAL(13, 4), -- Assuming some kind of shipping coefficient, perhaps a multiplier
  CONSTRAINT PK_DimLocation PRIMARY KEY (LocationKey)
);