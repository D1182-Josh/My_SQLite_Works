/* ÖDEV: Chinook veritabanındaki tracks tablosunda bulunan her bir şarkının türü (genre)
listeleyiniz.*/
	SELECT * FROM tracks;
	SELECT * FROM genres;
	
	SELECT t.name as Song_Name, g.name as Song_Genre
	FROM tracks t
	JOIN genres g
	ON t.GenreId = g.GenreId;
 
 /* ÖDEV: invoice tablosundaki faturaların her birinin müşteri adını (FirstName),
 soyadını (lastName), fatura tarihi (InvoiceDate) ve fatura meblağını (total) 
 listeleyen sorguyu yazınız */
 
	
	/* ÖDEV: artists tablosunda bulunan her bir kişinin albums tablosunda 
bulunan tüm albümlerinin listeleyen sorguyu yazınız. 
Sorguda ArtistId, Name, Title ve AlbumId olmalıdır */
