WITH cte_sales as (
  SELECT 
    STRFTIME('%Y', soldDate) as soldYear,
    STRFTIME('%m', soldDate) as soldMonth,
    SUM(salesAmount) as salesAmount
  FROM sales
  GROUP BY soldYear, soldMonth
)
select soldYear, soldMonth, salesAmount,
  SUM(salesAmount) OVER (PARTITION BY soldYear ORDER BY soldYear, soldMonth) AS totalPerMonth
FROM cte_sales
ORDER BY soldYear, soldMonth;

SELECT * FROM sales;



