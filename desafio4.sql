SELECT 
U.user_name AS usuario,
IF(
MAX(H.streams) LIKE '%2021',
	'Usuário ativo',
    'Usuário inativo'
) AS 'condicao_usuario'
FROM 
SpotifyClone.history AS H
JOIN SpotifyClone.users AS U
ON U.user_id = H.user_id
GROUP BY user_name;