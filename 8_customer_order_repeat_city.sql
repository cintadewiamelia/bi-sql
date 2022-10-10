-- Dari kota mana pelanggan yang paling sering melakukan repeat order

-- INSERT INTO `bi-sql-364614.bi_sql_views.customer_order_repeat_city` (customer_id, customer_name, city_name, total_repeat_order)

WITH datas AS (
  SELECT customer_id, COUNT(customer_id) total_repeat_order
  FROM `bi-sql-364614.bi_sql_superstore.order`
  GROUP BY customer_id
  ORDER BY total_repeat_order DESC LIMIT 1
), cust_datas AS (
  SELECT B.customer_id, A.city, COUNT(A.customer_id) total_repeat_order
  FROM `bi-sql-364614.bi_sql_superstore.order` A
  JOIN datas B ON A.customer_id=B.customer_id
  WHERE A.customer_id=B.customer_id
  GROUP BY city, customer_id
  ORDER BY customer_id, total_repeat_order DESC
)

SELECT A.customer_id, B.customer_name, A.city city_name, A.total_repeat_order
FROM cust_datas A
JOIN `bi-sql-364614.bi_sql_superstore.customer` B ON A.customer_id=B.customer_id
ORDER BY total_repeat_order DESC LIMIT 1