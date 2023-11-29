-- Populate Dim_Location Table
INSERT INTO Dim_Location (LocationKey, Country, Region, TaxRate, ShipCoeff)
SELECT
    CountryID AS LocationKey,
    Country,
    Region,
    TaxRate,
    ShipCoeff
FROM
    TB_Country;
