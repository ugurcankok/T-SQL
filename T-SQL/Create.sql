CREATE SCHEMA Musteri
CREATE SCHEMA Siparis

CREATE TABLE Musteri.MusteriDetail
(
	id int,
	name varchar(20)
)

CREATE TABLE Musteri.MusteriTablosu
(
	id int,
	name varchar(20)
)
CREATE TABLE Siparis.SiprisOranlari
(
	id int,
	name varchar(20)
)

select * from Siparis.SiprisOranlari