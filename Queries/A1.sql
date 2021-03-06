SELECT Developers.name
	 FROM Developers
	 WHERE Developers.id IN
		(SELECT D.id
		 FROM Developers D
		 WHERE NOT EXISTS
	 		((SELECT Games.price
			  FROM Games
		      WHERE Games.developerId = K)
		     EXCEPT
		     (SELECT Games.price
		      FROM Games
		      WHERE Games.developerId = D.id AND Games.developerId != K)));