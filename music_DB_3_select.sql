SELECT genre_name, COUNT(artist_id) 
FROM genres
JOIN artist_genre ag ON genres.id = ag.genre_id 
GROUP BY genre_name;

SELECT COUNT(tracks.id) 
FROM tracks
JOIN albums ON track_albumname = albums.album_name
WHERE album_year = 2020 OR album_year = 2019;

SELECT album_name, AVG(track_duration) 
FROM albums
JOIN tracks ON albums.album_name = tracks.track_albumname
GROUP BY album_name;

SELECT artist_name 
FROM artists
JOIN artist_album ON id = artist_album.artist_id
JOIN albums ON album_id = albums.id
WHERE album_year != 2020;

SELECT mixtape_name
FROM mixtapes
JOIN mixtape_track mt ON mixtapes.id = mt.mixtape_id
JOIN tracks t ON mt.track_id = t.id
JOIN albums ON t.track_albumname = albums.album_name
JOIN artist_album aa ON albums.id = aa.album_id
JOIN artists a ON aa.artist_id = a.id
WHERE a.artist_name = 'Nirvana';

SELECT COUNT(genre_id), album_name FROM albums
JOIN artist_album aa ON albums.id = aa.album_id
JOIN artists ON aa.artist_id = artists.id
JOIN artist_genre ag ON artists.id = ag.artist_id
GROUP BY album_name
HAVING (SELECT COUNT(genre_id)) > 1;

SELECT track_name
FROM tracks
LEFT JOIN mixtape_track mt ON tracks.id = mt.track_id
WHERE mt.track_id is null;

SELECT artist_name from tracks
JOIN albums ON track_albumname = albums.album_name
JOIN artist_album aa ON albums.id = aa.album_id
JOIN artists ON aa.artist_id = artists.id
WHERE track_duration = (SELECT min(track_duration) from tracks);

SELECT album_name 
FROM ( 
SELECT album_name, count(tracks.id) 
FROM albums
JOIN tracks ON album_name = tracks.track_albumname
GROUP BY album_name
HAVING count(tracks.id) = 
(SELECT count 
FROM ( 
SELECT album_name, count(tracks.id)
FROM albums
JOIN tracks ON album_name = tracks.track_albumname
GROUP BY album_name
ORDER by count(tracks.id)
LIMIT 1
) ff
)
) f;



