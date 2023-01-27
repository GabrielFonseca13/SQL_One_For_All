SELECT MIN(S.signature_price) AS faturamento_minimo,
MAX(S.signature_price) AS faturamento_maximo,
ROUND(AVG(S.signature_price),2) AS faturamento_medio,
SUM(S.signature_price) AS faturamento_total

FROM SpotifyClone.signature_types AS S
INNER JOIN SpotifyClone.user AS U
ON U.signature_id = S.signature_id;
