-- Total profit yang datang dari produk dengan sub category Furnishings & Supplies

-- INSERT INTO `bi-sql-364614.bi_sql_views.total_profit_furnishings_supplies` (product_id, product_name, total_profit)

WITH datas AS (
  SELECT A.product_id, (SELECT SUM(SAFE_CAST(profit AS FLOAT64)) FROM `bi-sql-364614.bi_sql_superstore.order` WHERE product_id=A.product_id) total_profit
  FROM `bi-sql-364614.bi_sql_superstore.order` A
  JOIN `bi-sql-364614.bi_sql_superstore.categories` B ON A.product_id=B.product_id
  WHERE B.sub_category IN ('Furnishings', 'Supplies')
  GROUP BY A.product_id
)

SELECT A.product_id, B.product_name, A.total_profit
FROM datas A
JOIN `bi-sql-364614.bi_sql_superstore.categories` B ON A.product_id=B.product_id 
ORDER BY A.product_id