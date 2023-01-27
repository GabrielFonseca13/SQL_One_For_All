SELECT ART.artist_name AS artista,
A.album_name AS album,
COUNT(F.artist_id) AS seguidores
FROM SpotifyClone.artist AS ART
INNER JOIN SpotifyClone.followed_artist AS F
ON F.artist_id = ART.artist_id
INNER JOIN SpotifyClone.album AS A
ON ART.artist_id = A.artist_id
GROUP BY ART.artist_name, A.album_name
ORDER BY seguidores DESC, ART.artist_name, A.album_name;