CREATE DATABASE penjualan_tiket_bus;

USE penjualan_tiket_bus;

-- Tabel Armada
CREATE TABLE data_armada (kode_bus INT PRIMARY KEY,
nama_bus VARCHAR(25), 
alamat_tujuan VARCHAR(25), 
keberangkatan VARCHAR(30));

-- Tabel Jadwal Keberangkatan
CREATE TABLE jadwal_keberangkatan
(kode_keberangkatan INT PRIMARY KEY, 
tgl_keberangkatan VARCHAR(30), 
kode_bus INT);

-- Tabel Data penumpang dan Posisi Tempat Duduk
CREATE TABLE Data_Penumpang_dan_Posisi_Tempat_Duduk 
(kode_penumpang INT PRIMARY KEY,
  nomor_tempat_duduk VARCHAR(25),
  nama VARCHAR(20),
  kode_bus INT);
  
-- Tabel Transaksi Penjualan
CREATE TABLE Transaksi_Penjualan (kode_transaksi_penjualan INT PRIMARY KEY,
kode_keberangkatan INT,
kode_penumpang INT,
tgl_transaksi_penjualan DATE,
nomor_tempat_duduk INT);

-- Tabel Laporan Transaksi
CREATE TABLE Laporan_Transaksi (kode_transaksi INT PRIMARY KEY,
kode_transaksi_penjualan INT,
tgl_transaksi_penjualan DATE,
jumlah_pembayaran VARCHAR(50),
FOREIGN KEY (kode_transaksi_penjualan) REFERENCES Transaksi_penjualan(kode_transaksi_penjualan));