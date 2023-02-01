-- SELECT COUNT(R.user_id) AS quantidade_musicas_no_historico
-- FROM SpotifyClone.reprodution AS R 
-- INNER JOIN SpotifyClone.user AS U
-- ON U.user_id = R.user_id
-- WHERE U.user_id = 1;

SELECT COUNT(user_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.reprodution
WHERE user_id = 1
GROUP BY user_id;