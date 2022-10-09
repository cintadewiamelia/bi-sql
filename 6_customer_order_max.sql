-- Nama pelanggan yang membeli produk paling banyak (dalam quantity)

-- INSERT INTO `bi-sql-364614.bi_sql_views.customer_order_max` (customer_id, customer_name, total_qty)

WITH datas AS (
  SELECT customer_id, SUM(SAFE_CAST(quantity AS INT64)) total_qty
  FROM `bi-sql-364614.bi_sql_superstore.order`
  GROUP BY customer_id
)

SELECT A.customer_id, B.customer_name, A.total_qty
FROM datas A
JOIN `bi-sql-364614.bi_sql_superstore.customer` B ON A.customer_id=B.customer_id
ORDER BY total_qty DESC LIMIT 1