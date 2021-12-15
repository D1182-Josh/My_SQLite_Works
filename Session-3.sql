/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
	-- COUNT
	-------------------------------------------------------------------------------------------------	
	/* invoices tablosunda kaç adet fatura bulunduğunu döndüren sorgu
	
	SELECT COUNT(*)
	FROM invoices;
	
	SELECT COUNT(BillingState)
	FROM invoices;
	
	SELECT COUNT(InvoiceId) AS number_of_invoice
	FROM invoices;
	
	SELECT COUNT(DISTINCT Composer) AS besteci_sayisi
	FROM tracks;
	
	/* ÖDEV:  invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız*/ 
	
	
	
	
		-- MIN,MAX
	-------------------------------------------------------------------------------------------------	
	/* tracks tablosundaki şarkı süresi en kısa olan şarkının adını ve süresi listeleyen
	sorguyu yaziniz */
	
	SELECT name as Song_name, min(Milliseconds) as Duration
	FROM tracks;
	
	
	
	
	
	
	
	
	
	
	
	