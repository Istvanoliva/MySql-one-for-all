SELECT DISTINCT u.user_name AS 'usuario',
IF( MAX(h.reproduction_date) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.user AS u
JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;