SELECT Customers.name, Customers.surname
FROM Customers
WHERE Customers.id IN
	(SELECT Purchases.customerId
	 FROM Purchases
	 WHERE Purchases.softwareId IN
	 	(SELECT Software.id
		 FROM Software
		 WHERE Software.developerId IN
		 	(SELECT Developers.id
			 FROM Developers
			 WHERE Developers.name = X)));
