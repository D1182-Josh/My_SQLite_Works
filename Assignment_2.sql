/*-----Questions:----
1- How many tracks does each album have? Your solution should include Album id and its number of tracks sorted from highest to lowest.

2- Find the album title of the tracks. Your solution should include track name and its album title.

3- Find the minimum duration of the track in each album. Your solution should include album id, album title and duration of the track sorted from highest to lowest.

4- Find the total duration of each album. Your solution should include album id, album title and its total duration sorted from highest to lowest.

5- Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration.

/*--SOLUTİONS--*/


-- 1
SELECT AlbumId, count(name) as tracks_number
FROM tracks
GROUP BY AlbumId;

-- 2
SELECT tracks.name,albums.Title
FROM tracks
JOIN albums ON tracks.AlbumId = albums.AlbumId;

-- 3

SELECT tracks.AlbumId,albums.Title,min(Milliseconds) as minimum
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
ORDER BY minimum DESC

-- 4
SELECT tracks.AlbumId,albums.Title,SUM(Milliseconds) as total
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
ORDER BY total DESC

-- 5
SELECT albums.Title,SUM(Milliseconds) as total
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
HAVING total > 4200000
