Select *from transaksi_penjualan 
Join data_penumpang_dan_posisi_tempat_duduk on transaksi_penjualan.kode_penumpang=data_penumpang_dan_posisi_tempat_duduk.kode_penumpang;

Select *from data_armada
join data_penumpang_dan_posisi_tempat_duduk on data_armada.kode_bus=data_penumpang_dan_posisi_tempat_duduk.kode_bus;

Select data_armada.kode_bus, data_armada.nama_bus from data_armada
join data_penumpang_dan_posisi_tempat_duduk on data_armada.kode_bus=data_penumpang_dan_posisi_tempat_duduk.kode_bus;

Select kode_keberangkatan,kode_penumpang,tgl_transaksi_penjualan,kode_bus
From data_penumpang_dan_posisi_tempat_duduk
inner join transaksi_penjualan using (kode_penumpang);

select data_armada.kode_bus,nama_bus,alamat_tujuan,keberangkatan,data_penumpang_dan_posisi_tempat_duduk.kode_penumpang,nomor_tempat_duduk
from data_armada
left join data_penumpang_dan_posisi_tempat_duduk
using (kode_bus);

select *from data_armada
right join jadwal_keberangkatan
using (kode_bus);

select *from data_armada,data_penumpang_dan_posisi_tempat_duduk
where data_armada.kode_bus=data_penumpang_dan_posisi_tempat_duduk.kode_bus;

select *from laporan_transaksi
join transaksi_penjualan on laporan_transaksi.kode_transaksi_penjualan=transaksi_penjualan.kode_transaksi_penjualan;





