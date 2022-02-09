SELECT C.cancao AS cancao,
COUNT(H.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H 
ON H.cancao_id = C.cancao_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;