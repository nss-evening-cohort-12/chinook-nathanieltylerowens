  
SELECT SUM(Invoice.Total) as 'Invoice Total'
From Invoice
WHERE InvoiceDate LIKE '%2009%' OR InvoiceDate LIKE '%2011%'