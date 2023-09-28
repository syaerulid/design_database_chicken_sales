-- Drop Database if Database Exists
DROP DATABASE IF EXISTS ayam;
-- Creating New Database with UTF8 Encoding Format
CREATE DATABASE ayam DEFAULT CHARACTER SET utf8mb4;
-- Show the List of Database to make sure our database is sucessfully created
SHOW DATABASES;

-- Using ayam database that recently we create
USE ayam;
-Create First Table
CREATE TABLE pesanan (
	ID INT,
    Tanggal DATE,
    Bulan INT,
    Tahun INT,
    Username VARCHAR(255) NOT NULL UNIQUE,
    NamaPerusahaan VARCHAR(255),
    JumlahAyam INT,
    Kilogram DOUBLE,
    HargaUnit INT,
    TotalHarga INT,
    BiayaOperasional INT,
    JumlahMati INT,
    Bayaran INT,
    Supir INT,
    PlatMobil INT,
    Keterangan INT,
    PRIMARY KEY (Username),
    CHECK (Kilogram >= 0),
    CHECK (JumlahAyam >= 0)
);

 USE ayam;
-- Inserting Data to Created Table
LOAD DATA INFILE 'F:/Self Learning/Dataset/Kaggle/Data Penjualan Ayam/pesanan.csv' -- change with your file path
-- Table Path
INTO TABLE pesanan
-- CSV Files
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
-- header ignore
IGNORE 1 LINES;

CREATE INDEX idx_username ON pesanan (Username);

USE ayam;
DROP TABLE IF EXISTS user;
CREATE TABLE user (
	UniqueID INT,
    UniqueUser VARCHAR(255) NOT NULL,
    NamaLengkap VARCHAR(255),
    Alamat VARCHAR(255),
    Kota VARCHAR(255),
    NoHp INT(8),
    Pass VARCHAR(255),
    RoleID INT(2),
    Latitude DOUBLE,
    Longitude DOUBLE,
    FOREIGN KEY (UniqueUser) REFERENCES pesanan(Username)
);

USE ayam;
-- Inserting Data to Created Table
LOAD DATA INFILE 'F:/Self Learning/Dataset/Kaggle/Data Penjualan Ayam/user.csv'
-- Table Path
INTO TABLE user_pesanan
-- CSV Files
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n'
-- header ignore
IGNORE 1 LINES;

ALTER TABLE pesanan
DROP COLUMN Kilogram,
DROP COLUMN BiayaOperasional,
DROP COLUMN Supir,
DROP COLUMN PlatMobil,
DROP COLUMN Keterangan,
DROP COLUMN Bayaran;

ALTER TABLE user_pesanan
DROP COLUMN NoHp,
DROP COLUMN Pass,
DROP COLUMN RoleID;

CREATE TABLE alamat_user AS
SELECT ROW_NUMBER() OVER (ORDER BY Alamat) AS IDAlamat,
	Alamat
FROM (SELECT DISTINCT Alamat FROM user_pesanan) AS unique_addresses;

CREATE TABLE alamat_user AS
SELECT ROW_NUMBER() OVER (ORDER BY Alamat) AS IDAlamat,
	Alamat
FROM (SELECT DISTINCT Alamat FROM user_pesanan) AS unique_addresses;

CREATE TABLE alamat_user AS
SELECT ROW_NUMBER() OVER (ORDER BY Alamat) AS IDAlamat,
	Alamat
FROM (SELECT DISTINCT Alamat FROM user_pesanan) AS unique_addresses;

CREATE INDEX idx_alamat ON user_pesanan(Alamat);
CREATE INDEX idx_kota ON user_pesanan(Kota);
CREATE INDEX idx_perusahaan ON pesanan(NamaPerusahaan);

ALTER TABLE alamat_user
ADD CONSTRAINT fk_alamat_up
FOREIGN KEY (Alamat) REFERENCES user_pesanan(Alamat);

ALTER TABLE kota_user
ADD CONSTRAINT fk_kota_up
FOREIGN KEY (Kota) REFERENCES user_pesanan(Kota);

ALTER TABLE perusahaan_user
ADD CONSTRAINT fk_perusahaan_p
FOREIGN KEY (NamaPerusahaan) REFERENCES pesanan(NamaPerusahaan);

ALTER TABLE kota_user
ADD CONSTRAINT fk_kota_up
FOREIGN KEY (Kota) REFERENCES user_pesanan(Kota);

SELECT 
	NamaPerusahaan,
	SUM(JumlahAyam) as TotalAyam
FROM pesanan_dan_user
WHERE Tahun = 2020
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

WITH ayam_mati -- This is CTE
AS (
SELECT
 NamaPerusahaan,
    SUM(JumlahMati) as JumlahAyamMati
FROM pesanan_dan_user
WHERE JumlahMati > 0
GROUP BY 1
ORDER BY 2 DESC
)

SELECT 
 NamaPerusahaan,
 JumlahAyamMati
FROM ayam_mati
WHERE JumlahAyamMati >= 10;

SELECT 
	Kota,
    ROUND(AVG(HargaUnit), 2) as AvgHargaAyam
FROM pesanan_dan_user
GROUP BY 1;

-- Create User 1 with Full Access
CREATE USER IF NOT EXISTS
'Syaerul@localhost'
IDENTIFIED BY 'erul_password';

-- Create User 2 with Limited Access (Select)
CREATE USER IF NOT EXISTS
'Faza@localhost'
IDENTIFIED BY 'faza_password';

-- GRANTS USER PRIVILEGES, 1ST USER IS DATABASE ADMIN
GRANT ALL PRIVILEGES
ON ayam.*
TO 'Syaerul@localhost';

-- SECOND USER ONLY CAN READ(SELECT)
GRANT
SELECT
ON ayam.*
TO 'Faza@localhost';





