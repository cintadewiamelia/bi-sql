-- Jumlah order yang memiliki waktu pengiriman masih di hari yang sama dengan waktu pemesanan

-- INSERT INTO `bi-sql-364614.bi_sql_views.total_order_sameday` (product_id, product_name, total_order)

WITH datas AS (
  SELECT product_id, COUNT(order_id) total_order
  FROM `bi-sql-364614.bi_sql_superstore.order`
  WHERE ship_mode='Same Day'
  GROUP BY product_id
)

SELECT A.product_id, B.product_name, A.total_order
FROM datas A
JOIN `bi-sql-364614.bi_sql_superstore.categories` B ON A.product_id=B.product_id 
ORDER BY A.product_id DESC