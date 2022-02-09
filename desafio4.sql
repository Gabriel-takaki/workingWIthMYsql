SELECT

U.nome AS usuario,
    IF(MAX(H.data_reproducao) LIKE '2021%',
     'Usuário ativo', 
     'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS U
LEFT JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;