-- Jumlah seluruh produk yang terjual

-- INSERT INTO `bi-sql-364614.bi_sql_views.product_sold` (product_id, total_product)

SELECT product_id, COUNT(product_id) total_product
FROM `bi-sql-364614.bi_sql_superstore.order`
GROUP BY product_id
ORDER BY product_id