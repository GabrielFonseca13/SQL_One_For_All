SELECT 
	COUNT(DISTINCT T.track_name) AS cancoes,
    COUNT(DISTINCT ART.artist_name) AS artistas, 
    COUNT(DISTINCT A.album_name) AS albuns 
FROM SpotifyClone.track as T
INNER JOIN SpotifyClone.artist as ART 
ON T.artist_id = ART.artist_id
INNER JOIN SpotifyClone.album as A
ON T.album_id = A.album_id;