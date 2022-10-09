-- Berapa discount terkecil dari seluruh order

-- INSERT INTO `bi-sql-364614.bi_sql_views.discount_min` (product_id, discount)

SELECT product_id, (SELECT MIN(SAFE_CAST(discount AS FLOAT64)) FROM `bi-sql-364614.bi_sql_superstore.order` WHERE product_id=product_id) discount
FROM `bi-sql-364614.bi_sql_superstore.order`
GROUP BY product_id
ORDER BY product_id