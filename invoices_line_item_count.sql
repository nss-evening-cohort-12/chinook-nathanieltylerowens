SELECT COUNT(*) as 'Line Items', Invoice.*
From InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId