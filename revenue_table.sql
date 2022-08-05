CREATE TABLE revenue_table AS(
SELECT
	p.id_customer,
	p.nama,
	j.tanggal,
	j.id_invoice,
	p.cabang_sales,
	b.nama_barang,
	j.jumlah_barang,
	j.jumlah_barang * harga AS revenue,
	b.lini
FROM
	penjualan AS j
JOIN pelanggan AS p ON j.id_cabang=p.id_cabang_sales
JOIN barang AS b ON b.kode_barang=j.id_barang
);