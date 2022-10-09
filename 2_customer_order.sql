-- Jumlah unique customer yang telah memesan produk

-- INSERT INTO `bi-sql-364614.bi_sql_views.customer_order` (customer_id, total_order)

SELECT customer_id, COUNT(customer_id) total_order
FROM `bi-sql-364614.bi_sql_superstore.order`
GROUP BY customer_id
ORDER BY customer_id