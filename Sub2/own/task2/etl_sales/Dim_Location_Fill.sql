-- Populate Dim_Location Table
INSERT INTO Dim_Location (LocationKey, Country, Region, TaxRate, ShipCoeff)
SELECT
    c.CountryID AS LocationKey,
    c.Country as Country,
    c.Region as Region,
    c.TaxRate as TaxRate,
    c.ShipCoeff as ShipCoeff
FROM
    TB_Country c;
