SELECT
us.user_name AS 'usuario',
COUNT(hi.user_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(so.song_duration) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.user AS us
JOIN SpotifyClone.history AS hi ON us.user_id = hi.user_id
JOIN SpotifyClone.songs AS so ON so.song_id = hi.song_id
GROUP BY us.user_name
ORDER BY us.user_name;
