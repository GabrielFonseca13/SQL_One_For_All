SELECT T.track_name AS nome, 
COUNT(T.track_name) AS reproducoes
FROM SpotifyClone.reprodution AS R
INNER JOIN SpotifyClone.user AS U
ON R.user_id = U.user_id
INNER JOIN SpotifyClone.track AS T
ON R.track_id = T.track_id
WHERE U.signature_id IN (1, 4)
GROUP BY nome
ORDER BY nome;