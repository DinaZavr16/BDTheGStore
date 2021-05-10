SELECT Developers.name
FROM Developers
WHERE Developers.id IN
	(SELECT Software.developerId
	 FROM Software
	 WHERE Software.price != P);