/*
	INTERSECT 
	-> used to return the results of 2 or more SELECT statement
	-> picks the common or intersecting records from compound SELECT queries.	
	
	SELECT expression1, expression2, ... expression_n  
	FROM table1  
	WHERE conditions  
	INTERSECT  
	SELECT expression1, expression2, ... expression_n  
	FROM table2  
	WHERE conditions; 
	
	1) expression1, expression2, ... expression_n: It specifies the columns that you want to retrieve.
	2) table1, table2: It specifies the tables that you want to retrieve records from.
	3) conditions: it specifies the conditions that must be fulfilled for the records to be selected.
*/

CREATE TABLE PizzaCompany
(
	id int PRIMARY KEY,
	item varchar(50),
	weight varchar(30)  
);

INSERT INTO PizzaCompany (id, item, weight) VALUES (1,'Farm House',77);
INSERT INTO PizzaCompany (id, item, weight) VALUES (2,'Green Wave',35);
INSERT INTO PizzaCompany (id, item, weight) VALUES (3,'Maxican Pun',10);
INSERT INTO PizzaCompany (id, item, weight) VALUES (4,'Green Globe',46);
INSERT INTO PizzaCompany (id, item, weight) VALUES (5,'Fine Veg',25);
INSERT INTO PizzaCompany (id, item, weight) VALUES (6,'Plain Pan',45);
INSERT INTO PizzaCompany (id, item, weight) VALUES (7,'Fresh Pan',34);

CREATE TABLE PastaCompany
(
	id int PRIMARY KEY,
	item varchar(50),
	weight varchar(30)  
);

INSERT INTO PastaCompany (id, item, weight) VALUES (1,'Farm Pasta',77);
INSERT INTO PastaCompany (id, item, weight) VALUES (2,'Green Panne',35);
INSERT INTO PastaCompany (id, item, weight) VALUES (3,'Maxican Pun',10);
INSERT INTO PastaCompany (id, item, weight) VALUES (4,'Maxican Globe',46);
INSERT INTO PastaCompany (id, item, weight) VALUES (5,'Fine Veg',25);
INSERT INTO PastaCompany (id, item, weight) VALUES (6,'Plain Pasta',45);
INSERT INTO PastaCompany (id, item, weight) VALUES (7,'Fresh Pan',34);
 

-- Common items
SELECT item FROM PizzaCompany
INTERSECT
SELECT item FROM PastaCompany;

-- Common items with weight more than 15
SELECT item FROM PizzaCompany WHERE weight > 15
INTERSECT
SELECT item FROM PastaCompany WHERE weight > 15;

-- Common items for item and weight
SELECT item, weight FROM PizzaCompany
INTERSECT
SELECT item, weight FROM PastaCompany;

-- Common items for item and weight with weight more than 15
SELECT item, weight FROM PizzaCompany WHERE weight > 15
INTERSECT
SELECT item, weight FROM PastaCompany WHERE weight > 15;


/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE PastaCompany;