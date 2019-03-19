/* 
1) Query all of the entries in the Genre table
SELECT * 
FROM Genre;
*/

/*
2) Using the INSERT statement, 
add one of your favorite artists to the Artist table.


INSERT INTO Artist (ArtistName, YearEstablished) 
	VALUES ('XAmbassadors', 1492);

Select * FROM Artist;


3) Using the INSERT statement, add one, or more, 
albums by your artist to the Album table. 


INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
	VALUES ('Bored At Home', 2018, 160, 'Dougie', 28, 7)

SELECT * FROM Album;
*/

/*
4) Using the INSERT statement, 
add some songs that are on that album to the Song table.
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
	VALUES ('Hello', 120, 2018, 7, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
	VALUES ('Goodbye', 120, 2018, 7, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
	VALUES ('Whats Up', 120, 2018, 7, 28, 23);

	SELECT * FROM Song;
*/
/* Write a SELECT query that provides the song titles, album title, and artist 
name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, 
and the WHERE keyword to filter the results to the album and artist you added.

Artist > Album > Song order
*/
/*
SELECT *
FROM Artist ar
	LEFT JOIN Album al
		ON ar.id = al.ArtistId
	LEFT JOIN Song s
		ON al.id = s.albumId
	Where ArtistName = 'Xambassadors'
*/
/*6)  Write a SELECT statement to display how many songs exist for each album.
 You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 */
 /*
 SELECT count(*) #songsByAlbum
	FROM Song s
		INNER JOIN Album a
		ON s.AlbumId = a.Id
	GROUP BY a.Title;
*/
/* 7) Write a SELECT statement to display how many songs exist for each artist.
 You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 */
 /*
 SELECT count(*) #songsByArtist, a.ArtistName
	FROM Song s
		INNER JOIN Artist a
		ON s.ArtistId = a.Id
	GROUP BY a.ArtistName;
	*/
/* 8) Write a SELECT statement to display how many songs exist for each genre.
 You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 */
 /*
 SELECT count(*) #songs, g.Label
	FROM Song s
		INNER JOIN Genre g
		ON s.GenreId = g.Id
	GROUP BY g.Label
*/
/* 9) Using MAX() function, write a select statement to find the album with the longest duration.
 The result should display the album title and the duration.
 */
 /*
 SELECT TOP 1 MAX(AlbumLength) AS AlbumLength, a.Title AS AlbumTitle
	FROM Album a
	GROUP BY a.Title
	ORDER BY AlbumLength desc
*/
/* 10) Using MAX() function, write a select statement to find the song with the longest duration. 
The result should display the song title and the duration.
*/
/*
SELECT TOP 1 MAX(SongLength) AS SongLength, s.Title AS SongTitle
	FROM Song s
	GROUP BY s.Title
	ORDER By SongLength
*/
/* 11) Modify the previous query to also display the title of the album.
SELECT TOP 1 MAX(SongLength) AS SongLength, s.Title AS SongTitle, a.Title
	FROM Song s
		LEFT JOIN Album a 
		ON s.AlbumId = a.Id
	GROUP BY s.Title, a.Title
	ORDER By SongLength

*/


	








	



