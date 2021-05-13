SELECT Games.name, Games.price
FROM Games
WHERE Games.developerId IN
	(SELECT Developers.id
	 FROM Developers
	 WHERE Developers.countryId IN
	 	(SELECT Countries.id
		 FROM Countries
		 WHERE Countries.name = K));