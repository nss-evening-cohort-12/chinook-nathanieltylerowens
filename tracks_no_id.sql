SELECT Track.Name as 'Track Name', Album.Title as 'Album Title', Genre.Name as 'Genre Name'
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Genre ON Track.GenreId = Genre.GenreId