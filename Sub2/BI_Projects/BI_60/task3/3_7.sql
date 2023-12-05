SELECT
    dl.Country,
    SUM(fis.OrderLineProfit) AS Profit
FROM
    Fact_InternetSales fis
JOIN
    Dim_Location dl ON fis.ShipToLocationKey = dl.LocationKey
WHERE
    fis.UnitPrice BETWEEN 1000 AND 2000
GROUP BY
    dl.Country
ORDER BY
    Profit DESC
LIMIT 3;
