SELECT
    ca.cancao AS nome, COUNT(us_c.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.usuario_cancao AS us_c
ON ca.id = us_c.cancao_id
INNER JOIN SpotifyClone.usuarios AS us
ON us.id = us_c.usuario_id
WHERE us.plano_id = 1 OR us.plano_id = 4
GROUP BY ca.cancao
ORDER BY nome ASC;