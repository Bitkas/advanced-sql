WITH sales_per_year AS (
SELECT
  STRFTIME('%Y', soldDate) as year,
  SUM(salesAmount) as totalSales
FROM sales
GROUP BY STRFTIME('%Y', soldDate)
)
SELECT spy.year, spy.totalSales
FROM sales_per_year spy;