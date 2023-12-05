SELECT
    dd.CalendarYear AS CalendarYear,
    dd.EnglishMonthName AS MonthOfTheYear,
    dl.Country,
    SUM(fis.OrderLineTaxAmt) AS TaxAmount
FROM
    Fact_InternetSales fis
JOIN
    Dim_Location dl ON fis.ShipToLocationKey = dl.LocationKey
JOIN
    Dim_Date dd on dd.DateKey = fis.OrderDateKey
WHERE
    (dl.Country = 'France' OR dl.Country = 'Germany')
    AND dd.CalendarYear = 2021
    AND dd.MonthNumberOfYear BETWEEN 1 AND 6
GROUP BY
    CalendarYear,
    MonthOfTheYear,
    dl.Country
ORDER BY
    MonthOfTheYear,
    TaxAmount
