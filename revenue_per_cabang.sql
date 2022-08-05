SELECT
	cabang_sales,
	SUM(jumlah_barang) as total_barang,
	SUM(revenue) AS revenue_per_cabang
FROM revenue_table
GROUP BY 1
ORDER BY 3 DESC;

