SELECT 

A.artista AS 'artista'
AL.album AS 'album'

FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albums AS AL

ON AL.artista_id = A.artista_id
WHERE A.artista_id = 1;
ORDER BY AL.album;