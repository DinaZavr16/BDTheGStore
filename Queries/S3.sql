SELECT Software.name, Software.price
FROM Software
WHERE Software.developerId IN
	(SELECT Developers.id
	 FROM Developers
	 WHERE Developers.countryId IN
	 	(SELECT Countries.id
		 FROM Countries
		 WHERE Countries.name = K));
