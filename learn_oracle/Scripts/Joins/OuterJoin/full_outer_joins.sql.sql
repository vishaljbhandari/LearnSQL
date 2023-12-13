/*
	Outer Join
	-> An outer join is similar to equijoin but it gets also the non-matched rows from the table

	> Full Outer Join
		-> Only Left rows + Common Matched Data + Only Right rows
		-> Common Matched Data + Non-matched rows from Left table + Non-matched rows from Right table

	SELECT columns  
	FROM table1  
	FULL OUTER JOIN table2  
	ON table1.column = table2.column;      

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
	pz.CompanyId AS PizzaCompanyId, 
	fd.CompanyID AS FoodsCompanyId, 
	fd.ItemName, 
	fd.UnitsSold
FROM PizzaCompany pz
FULL OUTER JOIN Foods fd 
ON pz.CompanyId = fd.CompanyId;

/* example clean up */
DROP TABLE Foods;
DROP TABLE PizzaCompany;