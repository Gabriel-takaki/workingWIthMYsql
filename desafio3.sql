SELECT
	U.nome AS usuario,
	COUNT(H.cancao_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(C.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.cancoes AS C
ON C.cancao_id = H.cancao_id
GROUP BY U.usuario_id
ORDER BY nome ASC;