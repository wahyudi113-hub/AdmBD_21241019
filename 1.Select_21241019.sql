-- menggunakan database dqlabmartbasc
use dqlabpraktek3;

-- cek tabel yang tersedia
show tables;

-- cek deskripsi tiap table
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari tabel ms_product_dqlab
select nama_product from ms_product_dqlab;

-- select 1 kolom dari tabel ms_pelanggan dan tr_penjualan
select nama_pelanggan from ms_pelanggan_dqlab;
select tgl_transaksi from tr_penjualan_dqlab;

-- select 2 atau lebih kolom dari tabel ms_product_dqlab
select nama_produk, harga from ms_produk_dqlab;

-- mengambil kolom nama pelanggan, tanggal transaksi dan total harga dari tabel tr_penjualan_dqlab
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom dalam tabel
-- mengambil seluruh kolom pada tabel ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan aliansi
-- prefix dan tabel
select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga
from ms_produk_dqlab;

-- prefix dari nama database dan tabel
select dqlabpraktek3.ms_produk_dqlab.nama_produk
from ms_produk_dqlab;

-- Alias dari nama kolom
select nama_produk as np, harga price from ms_produk_dqlab;
-- Alias dari nama tabel
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu dengan prefix
select nama_produk from ms_produk_dqlab as msp;

-- Case 1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- Case 2
select nama_produk, harga from ms_produk_dqlab;




