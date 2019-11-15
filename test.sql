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
SHOW COLUMNS FROM Employee;

-- ROUND(column or expression,precision)
-- SUM(column or expression)

SELECT Album.Title, COUNT(*) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;

SELECT Album.Title, ROUND(SUM(UnitPrice),2) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;

INSERT INTO MediaType (Name)
VALUES ("Test Media Type 1");

DELETE FROM MediaType WHERE Name = "Test Media Type 1";
