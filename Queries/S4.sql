SELECT Developers.name
FROM Developers
WHERE Developers.id IN
	(SELECT Games.developerId
	 FROM Games
	 WHERE Games.GenreId IN
		(SELECT Genres.id
		 FROM Genres
		 WHERE Genres.name = X));
