WITH cte_sales as (
  SELECT soldDate,
    STRFTIME('%m', soldDate) as soldMonth,
    COUNT(salesId) as salesAmount
  FROM sales
  GROUP BY soldMonth
)
select soldMonth, salesAmount, soldDate,
  COUNT(salesAmount) OVER (PARTITION BY soldMonth) AS totalPerMonth
FROM cte_sales
WHERE STRFTIME('%m', soldDate) = STRFTIME('%m', 'now') OR STRFTIME('%m', soldDate) = STRFTIME('%m', 'now', '-1 months');