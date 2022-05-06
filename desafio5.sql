SELECT s.song_name as 'cancao', COUNT(h.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s,
SpotifyClone.history AS h
WHERE h.song_id = s.song_id
GROUP BY s.song_name ORDER BY reproducoes DESC, cancao ASC LIMIT 2;