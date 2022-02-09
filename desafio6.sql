SELECT 
    MIN(P.valor) AS faturamento_minimo,
    MAX(P.valor) AS faturamento_maximo,
    ROUND(AVG(P.valor), 2) AS faturamento_médio,
    SUM(P.valor) AS faturamento_total
    FROM SpotifyClone.planos AS P, SpotifyClone.usuarios AS U WHERE U.plano_id = P.plano_id;