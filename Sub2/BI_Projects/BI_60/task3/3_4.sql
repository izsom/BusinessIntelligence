SELECT
    dl.Region as Region,
    dc.FullName AS CustomerName,
    COUNT(fis.SalesOrderLineNumber) as QuntityOrdered,
    Rank() OVER( ORDER BY COUNT(fis.SalesOrderLineNumber) DESC) as OrderRanking
FROM
    Dim_Customer AS dc
JOIN Fact_InternetSales AS fis ON dc.CustomerKey = fis.CustomerKey
JOIN Dim_Location as dl on fis.ShipToLocationKey = dl.LocationKey
WHERE
    dl.Region = 'Europe'
GROUP BY dc.FullName
ORDER BY QuntityOrdered DESC
limit 5