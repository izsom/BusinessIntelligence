INSERT INTO BI_BikesDW_39.Dim_Location (LocationKey,Country, Region, TaxRate, ShipCoeff)
SELECT c.CountryID As LocationKey,
	c.Country As Country, 
	c.Region AS Region, 
	c.TaxRate As TaxRate, 
	c.ShipCoeff As ShipCoeff
FROM BI_Bikes_39.TB_Country c