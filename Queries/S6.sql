SELECT Genres.name
FROM Genres
WHERE Genres.id NOT IN
	(SELECT Games.GenreId
	 FROM Games
	 WHERE Games.developerId IN
	 (SELECT Developers.id
		 FROM Developers
		 WHERE Developers.name = P));
