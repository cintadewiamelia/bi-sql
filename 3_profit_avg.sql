-- Rata-rata profit dari seluruh order (dalam mata uang)

-- INSERT INTO `bi-sql-364614.bi_sql_views.profit_avg` (product_id, profit_avg)

SELECT product_id, SUM(SAFE_CAST(profit AS FLOAT64)) / SUM(SAFE_CAST(quantity AS FLOAT64)) profit_avg
FROM `bi-sql-364614.bi_sql_superstore.order`
GROUP BY product_id
ORDER BY product_id