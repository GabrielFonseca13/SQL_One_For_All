SELECT T.track_name AS cancao,
COUNT(R.track_id) AS reproducoes
FROM SpotifyClone.track AS T
INNER JOIN SpotifyClone.reprodution AS R
ON T.track_id = R.track_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;