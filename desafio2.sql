SELECT 
COUNT(DISTINCT song.cancao_id) AS 'cancoes', 
COUNT(DISTINCT artist.artista_id) AS 'artistas',
COUNT(DISTINCT album.album_id) AS 'albuns'
FROM 
	SpotifyClone.cancoes as song
    INNER JOIN SpotifyClone.artistas AS artist
    INNER JOIN SpotifyClone.albums AS album;