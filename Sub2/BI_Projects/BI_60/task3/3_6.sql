WITH RankedProducts AS (
    SELECT
        dp.ProductTopCategoryName,
        dp.ProductSubCategoryName,
        dp.ProductModelName,
        sum(fs.OrderQty) as QuantitySold,
        Rank() OVER (PARTITION BY dp.ProductTopCategoryName ORDER BY SUM(fs.OrderQty) DESC) AS TopProdRank
    FROM
        Fact_InternetSales fs
    JOIN
        Dim_Product dp ON fs.ProductKey = dp.ProductKey
    GROUP BY
        dp.ProductTopCategoryName,
        dp.ProductSubCategoryName,
        dp.ProductModelName
)

SELECT
    ProductTopCategoryName,
    ProductSubCategoryName,
    ProductModelName,
    QuantitySold
FROM
    RankedProducts
WHERE
    TopProdRank <= 3
GROUP BY
    ProductTopCategoryName,
    ProductSubCategoryName,
    ProductModelName
ORDER BY
    ProductTopCategoryName,
    QuantitySold DESC;
