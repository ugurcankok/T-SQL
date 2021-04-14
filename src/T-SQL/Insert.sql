INSERT dbo.Resim (id,resim)
select 1,resim.* from OPENROWSET(BULK 'C:\Users\Casper\Desktop\image\f�ze4.jpg', SINGLE_BLOB) resim

select * from dbo.Resim

/* hash mash iyi bir sey degil azaltmak lazim index kullanabilirsin bu durumda. Has match olunca veriler gec gelir index ile bu zamani kisaltarak
zamandan kazanc saglanir performans artar. Tablolarda genelde PK ya gore siralar fakat sen tabloda baska id ye göre siralama yapmak 
istiyorsan group by ile yaparsin fakat hash match olabilir. Olusturdugun index otomatik olarak atiyorum prodcutid ye gore cekse daha iyi olur.
Disk sorunun varsa index pek iyi degildir. Birde indexleri gunluk rebuilt etmek gerekir cunku insertleri eklemeyebilir. 
drop and create yapanlarda oluyor. shrink ise disk de yer aciyor.*/

select * from dbo.tbl_PersonInfo