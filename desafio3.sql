SELECT 
    us.nome AS usuario, 
    COUNT(qtde.cancao_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(total.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.usuario_cancao AS qtde
ON us.id = qtde.usuario_id
INNER JOIN SpotifyClone.cancoes AS total
ON qtde.cancao_id = total.id
GROUP BY us.nome ASC;