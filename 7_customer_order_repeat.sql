-- Nama pelanggan yang paling sering melakukan repeat order

-- INSERT INTO `bi-sql-364614.bi_sql_views.customer_order_repeat` (customer_id, customer_name, total_repeat_order)

WITH datas AS (
  SELECT customer_id, COUNT(customer_id) total_repeat_order
  FROM `bi-sql-364614.bi_sql_superstore.order`
  GROUP BY customer_id
)

SELECT A.customer_id, B.customer_name, A.total_repeat_order
FROM datas A
JOIN `bi-sql-364614.bi_sql_superstore.customer` B ON A.customer_id=B.customer_id
ORDER BY total_repeat_order DESC LIMIT 1