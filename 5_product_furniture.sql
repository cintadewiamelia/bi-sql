-- Jumlah seluruh produk dari kategori Furniture

-- INSERT INTO `bi-sql-364614.bi_sql_views.product_furniture` (total_product)

SELECT COUNT(product_id) total_product
FROM `bi-sql-364614.bi_sql_superstore.categories`
WHERE category = 'Furniture'