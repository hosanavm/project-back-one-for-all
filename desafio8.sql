SELECT ar.artista AS artista, al.album AS album 
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.id = al.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY album;