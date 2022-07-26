SELECT
    ROUND(MIN(pl.valor), 2) AS faturamento_minimo,
    ROUND(MAX(pl.valor), 2) AS faturamento_maximo,
    ROUND(AVG(pl.valor), 2) AS faturamento_medio,
    ROUND(SUM(pl.valor), 2) AS faturamento_total
FROM SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuarios AS us
ON pl.id = us.plano_id;
