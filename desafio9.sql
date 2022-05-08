SELECT
COUNT(h.user_id) AS 'quantidade_musicas_no_historico'
FROM
SpotifyClone.history AS h,
SpotifyClone.user AS u
WHERE u.user_id = h.user_id AND u.user_name = 'Bill';