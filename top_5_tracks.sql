SELECT TotalSales, TrackName
FROM
(SELECT SUM(l.Quantity) as TotalSales, t.Name as TrackName, i.InvoiceDate
FROM InvoiceLine l
JOIN Track t ON t.TrackId = l.TrackId
JOIN Invoice i ON i.InvoiceId = l.InvoiceId
GROUP BY l.TrackId)
ORDER BY TotalSales DESC
LIMIT 5