-- Berapa discount terkecil dari seluruh order

-- INSERT INTO `bi-sql-364614.bi_sql_views.discount_min` (order_id, discount)

SELECT order_id, (SELECT MIN(SAFE_CAST(discount AS FLOAT64)) FROM `bi-sql-364614.bi_sql_superstore.order` WHERE product_id=product_id) discount
FROM `bi-sql-364614.bi_sql_superstore.order`
GROUP BY order_id
ORDER BY discount