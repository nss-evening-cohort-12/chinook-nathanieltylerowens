SELECT COUNT(*) as 'Items Per Invoice'
From InvoiceLine
GROUP BY InvoiceId