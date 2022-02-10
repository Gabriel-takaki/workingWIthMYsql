SELECT 

A.artista AS 'artista'
AL.album AS 'album'

FROM SpotifyClone.artistas AS A
JOIN SpotifyClone.albums AS AL
ON A.artista_id = AL.artista_id WHERE A.artista = "Walter Phoenix"
ORDER BY artista ASC;