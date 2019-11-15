select count(*) from Track;
select count(*) from Artist;
select Name from Artist;
select * from Track
WHERE Composer = "U2";
select Name, Title, ArtistId from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId;
SELECT Track.Name as Track, Title as Album, ArtistId, Artist.Name as Artist from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
INNER JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = "U2"
ORDER BY Album.Title desc, Track.Name;
SELECT MIN(LastName) FROM Customer;