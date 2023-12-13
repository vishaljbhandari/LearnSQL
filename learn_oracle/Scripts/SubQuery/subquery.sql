/*
	Subqueries
	-> subqueries are the queries inside a query
	-> These can be nested in any order
	-> Subqueries can be made using WHERE, FROM or SELECT clause
	
	SELECT * FROM tablename WHERE operator (subquery)  
	
	subquery: It is a select statement which returns at least one record set.
	
	Inner most query returns some result and outer queries uses those results and WORK
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
 
 
SELECT pz.item FROM PizzaCompany pz WHERE pz.item IN (
	SELECT ps.item FROM PastaCompany ps WHERE pz.item = ps.item
);

/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE PastaCompany;