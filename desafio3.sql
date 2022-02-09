SELECT U.user_name AS usuario, COUNT(H.song_id) 
AS qtde_musicas_ouvidas, ROUND(SUM(S.song_time)/60,2) 
AS total_minutos

FROM SpotifyClone.history AS H
INNER JOIN SpotifyClone.users AS U
INNER JOIN SpotifyClone.songs AS S
ON S.song_id = H.song_id
WHERE H.user_id = U.user_id
GROUP BY usuario
ORDER BY usuario;