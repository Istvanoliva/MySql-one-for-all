SELECT
ar.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(f.user_id) AS 'seguidores'
FROM
SpotifyClone.artist AS ar 
JOIN SpotifyClone.albums AS al ON ar.artist_id = al.artist_id 
JOIN SpotifyClone.followers AS f ON al.artist_id = f.artist_id
GROUP BY ar.artist_name, al.album_name
ORDER BY seguidores desc;


