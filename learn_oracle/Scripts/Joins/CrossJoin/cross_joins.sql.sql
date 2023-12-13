/*
	Cross Join (Cartesian Products)
	-> all rows from first table join with all of the rows of second table
    -> It normally happens when no matching join columns are specified
    -> if two tables in a join query have no join condition, then the Oracle returns their Cartesian product.

	> Left Outer Join 
		-> Only Left rows + Common Matched Data
		-> Common Matched Data + Non-matched rows from Left table 			

    SELECT *   
    FROM table1   
    CROSS JOIN table2;      

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
	UnitsSold int
);

INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (1,'Large Pizza',5);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (2,'Garlic Knots',6);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (3,'Large Pizza',3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (4,'Medium Pizza',8);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (5,'Breadsticks',7);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (6,'Medium Pizza',11);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (7,'Small Pizza',9);
INSERT INTO Foods (ItemId, ItemName, UnitsSold) VALUES (8,'Small Pizza',6);
 
SELECT * FROM Foods;

-- Both tables are not having any matching columns

SELECT  *
FROM PizzaCompany pz
CROSS JOIN Foods fd;

/* example clean up */
DROP TABLE Foods;
DROP TABLE PizzaCompany;