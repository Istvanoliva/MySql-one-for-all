SELECT 
COUNT(DISTINCT so.song_name) AS 'cancoes',
COUNT(DISTINCT ar.artist_name) AS 'artistas',
COUNT(DISTINCT alb.album_name) AS 'albuns'
FROM SpotifyClone.songs AS so
JOIN SpotifyClone.artist AS ar
JOIN SpotifyClone.albums AS alb;

