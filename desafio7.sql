SELECT A.artista as artista,
AL.album as album,
COUNT(F.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albums AS AL
ON AL.artista_id = A.artista_id
INNER JOIN SpotifyClone.favArt AS F
ON A.artista_id = F.artista_id
GROUP BY AL.album, A.artista
ORDER BY seguidores DESC, A.artista, AL.album

