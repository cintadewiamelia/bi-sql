-- Jumlah order yang berasal dari produk warna hitam (terdapat keterangan “black” di nama produknya)

-- INSERT INTO `bi-sql-364614.bi_sql_views.total_order_product_black` (product_id, product_name, total_order)

WITH datas AS (
  SELECT A.product_id, (SELECT COUNT(order_id) FROM `bi-sql-364614.bi_sql_superstore.order` WHERE product_id=A.product_id) total_order
  FROM `bi-sql-364614.bi_sql_superstore.order` A
  JOIN `bi-sql-364614.bi_sql_superstore.categories` B ON A.product_id=B.product_id
  WHERE LOWER(B.product_name) LIKE '%black%'
  GROUP BY A.product_id
)

SELECT A.product_id, B.product_name, A.total_order
FROM datas A
JOIN `bi-sql-364614.bi_sql_superstore.categories` B ON A.product_id=B.product_id 
ORDER BY A.total_order DESC