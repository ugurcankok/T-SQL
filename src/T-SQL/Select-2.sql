--select
--	s.PersonId,
--	p.ProductName,
--	s.SalesDate
--from dbo.Sales s
--INNER JOIN Product p ON p.ProductId=s.ProductId

select
	s.PersonId,
	(select p.ProductName from Product p where p.ProductId=s.ProductId) as ProductName,
	s.SalesDate
from dbo.Sales s

/*iki tabloda cok buyuk ise joinlemek daha iyidir. Tablolardan birinde cok kayit digerinde az kayit varsa ic sorgu yazmak daha iyidir*/
/*view index atabiliyorsun, join yapabilirsin fakat procedure de bunlari yapamazsin bunlardan dolayi view ve procedure farklidir.
View anlamsiz olan tablolari anlamli hale getirir. Select e gore daha hizli calisir cunku arkada derlenmistir tekrar derlemek icin ugrasilmaz.
OR yavas calisir bunun yerine IF li yapilar kullanilir.*/