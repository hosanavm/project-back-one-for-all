SELECT ar.artista AS artista,  al.album AS album, COUNT(us_a.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.id = al.artista_id
INNER JOIN SpotifyClone.usuario_artista AS us_a
ON ar.id = us_a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;