SELECT ca.cancao AS cancao, COUNT(us_c.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.usuario_cancao AS us_c
ON ca.id = us_c.cancao_id
GROUP BY ca.cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;