/*
	Semi Join
	-> an efficient method of performing a WHERE EXISTS sub-query
	-> A semi-join returns one copy of each row in first table for which at least one match is found.
	-> Semi-joins are written using the EXISTS construct.		

	SELECT *
	FROM table1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM table2
		WHERE table1.field1 = table2.field2
	)	

	SELECT *
	FROM table1
	WHERE EXISTS
	(
		SELECT 1
		FROM table2
		WHERE table1.field1 = table2.field2
	)
    
    SELECT *
	FROM table1
	WHERE IN
	(
		SELECT 1
		FROM table2
		WHERE table1.field1 = table2.field2
	)
    
    SELECT *
	FROM table1
	WHERE NOT IN
	(
		SELECT 1
		FROM table2
		WHERE table1.field1 = table2.field2
	)
*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (1,'Dominos','Los Angeles');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (2,'Pizza Hut','San Francisco');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (3,'Papa johns','San Diego');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (4,'Ah Pizz','Fremont');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (5,'Nino Pizza','Las Vegas');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (6,'Pizzeria','Boston');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (7,'chuck e cheese','Chicago');
 
SELECT * FROM PizzaCompany;


CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int,
	FOREIGN KEY(CompanyID) REFERENCES PizzaCompany(CompanyID)
);

INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (1,'Large Pizza',5,2);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (2,'Garlic Knots',6,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (3,'Large Pizza',3,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (4,'Medium Pizza',8,4);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (5,'Breadsticks',7,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (6,'Medium Pizza',11,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (7,'Small Pizza',9,6);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (8,'Small Pizza',6,7);
 
SELECT * FROM Foods;

SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId 
FROM PizzaCompany pz
WHERE NOT EXISTS
	(
		SELECT 1
		FROM Foods fd
		WHERE fd.CompanyId = pz.CompanyId
	)
ORDER BY pz.CompanyName;

SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId 
FROM PizzaCompany pz
WHERE EXISTS
	(
		SELECT 1
		FROM Foods fd
		WHERE fd.CompanyId = pz.CompanyId
	)
ORDER BY pz.CompanyName;

SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId 
FROM PizzaCompany pz
WHERE pz.CompanyId IN
	(
		SELECT fd.CompanyId
		FROM Foods fd
		WHERE fd.CompanyId = pz.CompanyId
	)
ORDER BY pz.CompanyName;

SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId 
FROM PizzaCompany pz
WHERE pz.CompanyId NOT IN
	(
		SELECT fd.CompanyId
		FROM Foods fd
		WHERE fd.CompanyId = pz.CompanyId
	)
ORDER BY pz.CompanyName;

/* example clean up */
DROP TABLE Foods;
DROP TABLE PizzaCompany;