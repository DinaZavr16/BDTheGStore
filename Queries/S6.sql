SELECT Developers.name
FROM Developers
WHERE Developers.id NOT IN
	(SELECT Software.developerId
	 FROM Software
	 WHERE Software.name = X);