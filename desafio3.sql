SELECT 
	U.user_name AS usuario,
    COUNT(R.user_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(T.track_duration / 60),2) AS total_minutos
FROM SpotifyClone.user as U
INNER JOIN SpotifyClone.reprodution as R 
ON U.user_id = R.user_id
INNER JOIN SpotifyClone.track as T
ON R.track_id = T.track_id
GROUP BY U.user_name
ORDER BY U.user_name;
