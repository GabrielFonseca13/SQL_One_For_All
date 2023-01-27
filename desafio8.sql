SELECT ART.artist_name AS artista,
A.album_name AS album
FROM SpotifyClone.artist AS ART
INNER JOIN SpotifyClone.album AS A
ON ART.artist_id = A.artist_id
WHERE ART.artist_id = 3;
