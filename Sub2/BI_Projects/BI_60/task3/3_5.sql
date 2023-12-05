SELECT
	dl.Country,
	dd.CalendarYear AS Year,
	dd.EnglishMonthName AS Month,
	SUM(fis.OrderLineShippingCost) AS ShippingCosts
FROM
	Fact_InternetSales fis
		JOIN
	Dim_Location dl ON fis.ShipToLocationKey = dl.LocationKey
		JOIN
	Dim_Date dd on dd.DateKey = fis.OrderDateKey
WHERE
	dl.Country = 'United Kingdom'
	AND fis.ShipMethod = 'Cargo International'
	AND dd.CalendarYear = 2020
	AND dd.MonthNumberOfYear BETWEEN 1 AND 6
GROUP BY
	dl.Country,
	Year,
	Month
