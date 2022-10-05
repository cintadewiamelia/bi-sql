# BI - SQL

## INTRO

Repository ini merupakan project latihan dengan tugas membentuk metrics berdasarkan data transaksi harian di PT VWXYZ menggunakan SQL. Data tersebut dikelompokkan menjadi 3 kategori, yaitu Order, Product dan Customers.

## Detail Dataset

- Dataset : Superstore - BI Analyst
- Database load: BigQuery Dataset ID `...`
- Keterangan :
    - Tabel Order berisi daftar pesanan customer disertai barang yang dipesan
    - Tabel Categories berisi daftar barang dan identitasnya yang tersedia dan dijual di PT VWXYZ
    - Tabel Customers berisi daftar pelanggan dan identitasnya yang sudah melakukan pemesanan

## SQL Statement

1. Jumlah seluruh produk yang terjual
2. Jumlah unique customer yang telah memesan produk
3. Rata-rata profit dari seluruh order (dalam mata uang)
4. Berapa discount terkecil dari seluruh order
5. Jumlah seluruh produk dari kategori Furniture
6. Nama pelanggan yang membeli produk paling banyak (dalam quantity)
7. Nama pelanggan yang paling sering melakukan repeat order
8. Dari kota mana pelanggan yang paling sering melakukan repeat order
9. Order mana yang mendapatkan total discount paling kecil
10.Total profit yang datang dari produk dengan sub category Furnishings & Supplies
11. Jumlah order yang berasal dari produk warna hitam (terdapat keterangan “black” di nama produknya)
12.Jumlah order yang memiliki waktu pengiriman masih di hari yang sama dengan waktu pemesanan
