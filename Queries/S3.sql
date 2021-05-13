SELECT MIN(Games.price)
FROM Games
WHERE Games.developerId IN
	(SELECT Developers.id
	 FROM Developers
	 WHERE Developers.name = P);
