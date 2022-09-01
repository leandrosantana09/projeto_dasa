
--QUESTÃO 1

SELECT DISTINCT(c.Customerid), FirstName, LastName, Country
FROM customers AS c
INNER JOIN invoices AS i
ON c.Customerid = i.Customerid
WHERE Country = 'USA';

--QUESTÃO 2

SELECT DISTINCT(InvoiceId), FirstName, LastName, InvoiceDate, BillingCountry
FROM customers AS c
INNER JOIN invoices AS i
ON c.Customerid = i.Customerid
WHERE Country = 'Brazil';

--QUESTÃO 3

SELECT DISTINCT(InvoiceId), InvoiceDate
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31';

--QUESTÃO 4

SELECT InvoiceLineId, COUNT(InvoiceId)
FROM invoice_items
GROUP BY InvoiceId;

--QUESTÃO 5

SELECT InvoiceLineId, Name		
FROM invoice_items AS i
INNER JOIN tracks AS t
ON i.Trackid = t.Trackid;