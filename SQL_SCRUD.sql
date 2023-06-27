INSERT INTO data_armada (kode_bus, nama_bus, alamat_tujuan, keberangkatan)
VALUES 	
		('1012', 'Murni Jaya', 'Palembang', 'Bekasi'),
		('1013', 'Sinar Abadi', 'Madura', 'Jakarta'),
		('1014', 'Maju Lancar', 'Semarang', 'Cikarang'),
		('1015', 'Gunung Harapan', 'Yogyakarta', 'Sukaresmi');
        
SELECT * FROM data_armada;

INSERT INTO jadwal_keberangkatan (kode_keberangkatan, tgl_keberangkatan, kode_bus)
VALUES 
		('66184', '2024-07-25', '1012'),
		('66187', '2024-06-27', '1013'),                    
		('66189', '2024-07-13', '1014'),
		('66190', '2024-06-28', '1015');
        
SELECT * FROM jadwal_keberangkatan;
        
INSERT INTO Data_Penumpang_dan_Posisi_Tempat_Duduk (kode_penumpang, nomor_tempat_duduk, nama, kode_bus)
VALUES	
		('2812', '11-20', 'Ahmad', '1012'),
		('2813', '21-30', 'Rio', '1013'),
		('2814', '31-40', 'Rina', '1014'),
		('2815', '40-45', 'Rani', '1015');
        
SELECT * FROM Data_Penumpang_dan_Posisi_Tempat_Duduk;        
        
INSERT INTO Transaksi_Penjualan (kode_transaksi_penjualan, kode_keberangkatan, 
kode_penumpang, tgl_transaksi_penjualan, nomor_tempat_duduk)
VALUES 	
		('101513', '66189', '2813', '2024-07-08', '022'),
		('101414', '66190', '2815', '2024-06-18', '042'),                           
		('101215', '66184', '2812', '2024-07-14', '014'),
		('101316', '66187', '2814', '2024-06-20', '036');   
        
SELECT * FROM transaksi_penjualan;        
        
INSERT INTO laporan_transaksi (kode_transaksi, kode_transaksi_penjualan,
tgl_transaksi_penjualan, jumlah_pembayaran)
VALUES
		('2021513', '101513', '2024-07-08', '300.000'),
		('2031414', '101414', '2024-06-18', '500.000'),
		('2041215', '101215', '2024-07-14', '170.000'),
		('2051316', '101316', '2024-06-20', '700.000');
        
SELECT * FROM laporan_transaksi;
UPDATE jadwal_keberangkatan set tgl_keberangkatan = "2024-06-27" WHERE kode_keberangkatan = "66187";
DELETE from jadwal_keberangkatan WHERE kode_keberangkatan;
