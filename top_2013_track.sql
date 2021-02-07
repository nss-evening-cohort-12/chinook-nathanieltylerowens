SELECT MAX(TotalSales), TrackName
FROM
(SELECT SUM(l.Quantity) as TotalSales, t.Name as TrackName, i.InvoiceDate
FROM InvoiceLine l
JOIN Track t ON t.TrackId = l.TrackId
JOIN Invoice i ON i.InvoiceId = l.InvoiceId
WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY l.TrackId)