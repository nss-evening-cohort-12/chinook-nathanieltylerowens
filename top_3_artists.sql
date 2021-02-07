SELECT TotalSales, Artist
FROM
(SELECT SUM(l.Quantity) as TotalSales, Artist.Name as Artist
FROM InvoiceLine l
JOIN Track t ON t.TrackId = l.TrackId
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist ON a.ArtistId = Artist.ArtistId
GROUP BY a.ArtistId)
ORDER BY TotalSales DESC
LIMIT 3