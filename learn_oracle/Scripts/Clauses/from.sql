/*
	FROM    
	-> FROM clause is a mandatory clause in SELECT expression. 
		It specifies the tables from which data is to be retrieved.

	SELECT expressions  
	FROM tables  
	WHERE conditions;   
	
	SELECT expressions  
	FROM table1, table2  
	WHERE conditions;   
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
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (8,'New johns','San Diego');
COMMIT;

/* with one table */
SELECT *  
FROM PizzaCompany;

CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int
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

/* with multiple table */
SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId AS PizzaCompanyId, 
	fd.CompanyID AS FoodsCompanyId, 
	fd.ItemName, 
	fd.UnitsSold
FROM 
    PizzaCompany pz, Foods fd 
WHERE 
    pz.CompanyId = fd.CompanyId;

/* example clean up */
DROP TABLE Foods;
DROP TABLE PizzaCompany;