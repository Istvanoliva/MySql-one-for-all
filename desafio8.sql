SELECT
ar.artist_name AS 'artista', 
al.album_name AS 'album'
FROM SpotifyClone.artist AS ar
JOIN SpotifyClone.albums AS al ON ar.artist_id = al.artist_id
HAVING artista = 'Walter Phoenix'
ORDER BY album;