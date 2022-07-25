SELECT
    us.nome AS usuario,
    IF(MAX(YEAR(us_c.data_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.usuario_cancao AS us_c
ON us.id = us_c.usuario_id
GROUP BY us.nome
ORDER BY us.nome ASC;