SELECT
s.song_name AS 'nome',
COUNT(h.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
JOIN SpotifyClone.history AS h
ON s.song_id = h.song_id
JOIN SpotifyClone.user AS u
ON u.user_id = h.user_id
JOIN SpotifyClone.plan AS p
ON u.plan_id = p.plan_id
WHERE p.plan_name = 'gratuito' OR p.plan_name = 'pessoal'
GROUP BY nome
ORDER BY nome;