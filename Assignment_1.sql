/*---Questions:
1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).

2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, but this time sorted first by total dollar amount (in descending order), and then by CustomerId (in ascending order).

3. Compare the results of these two queries above. How are the results different when you switch the column you sort on first? (Explain it in your own words.)

4. Write a query to pull the first 10 rows and all columns from the invoices table that have a dollar amount of total greater than or equal to 10.

5. Write a query to pull the first 5 rows and all columns from the invoices table that have a dollar amount of total less than 10.

6. Find all track names that start with 'B' and end with 's'.

7. Use the invoices table to find all information regarding invoices whose billing address is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest to oldest.

SOLUTİON*/


-- 1
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by CustomerId DESC;
---------------------------
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by total DESC;
-- 2
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by total DESC;
-----------------------------
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by CustomerId ASC;
-- 3
/* When we use ASC sorted in CustomerId column it shows the results lowest to highest. 
In the other hand when we use DESC it works opposite of ASC that shows results highest to lowest.*/
 -- 4
 SELECT *
 FROM invoices
 WHERE total >= 10
 LIMIT 10;
 
 -- 5
 SELECT *
 FROM invoices
 WHERE total < 10
 LIMIT 5;
 
 -- 6
 SELECT name
 FROM tracks
 WHERE name like "B%s";
 
 -- 7
 SELECT *
 FROM invoices
 WHERE BillingCountry in("Germany","USA","Norway","Canada")
 AND InvoiceDate like "2010%"
 ORDER BY InvoiceDate DESC;
