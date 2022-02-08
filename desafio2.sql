SELECT 
COUNT(DISTINCT song.song_id) AS 'cancoes', 
COUNT(DISTINCT artist.artist_id) AS 'artistas',
COUNT(DISTINCT album.album_id) AS 'albuns'
FROM 
	SpotifyClone.songs as song
    INNER JOIN SpotifyClone.artists AS artist
    INNER JOIN SpotifyClone.albums AS album;