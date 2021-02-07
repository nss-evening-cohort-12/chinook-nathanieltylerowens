SELECT COUNT(*) AS 'Number of Tracks', Playlist.Name AS 'Playlist Name'
From PlaylistTrack
INNER JOIN Playlist WHERE PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY PlaylistTrack.PlaylistId