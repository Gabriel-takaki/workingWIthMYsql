SELECT S.song_name AS cancao,
COUNT(H.song_id) AS reproducoes
FROM SpotifyClone.songs AS S 
INNER JOIN SpotifyClone.history AS H 
ON H.song_id = S.song_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;