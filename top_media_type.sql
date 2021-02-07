SELECT MAX(TotalSales), MediaType
FROM
(SELECT SUM(l.Quantity) as TotalSales, m.Name as MediaType
FROM InvoiceLine l
JOIN Track t ON t.TrackId = l.TrackId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
GROUP BY t.MediaTypeId)