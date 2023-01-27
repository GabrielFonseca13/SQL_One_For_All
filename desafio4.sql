SELECT U.user_name AS usuario,
IF(YEAR(MAX(R.reprodution_date)) >= 2021, 'Usuário ativo','Usuário inativo') AS status_usuario
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.reprodution AS R
ON U.user_id = R.user_id
GROUP BY U.user_name
ORDER BY U.user_name;