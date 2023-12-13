/*
	EXISTS
	-> exists clause is used with select, insert, update, delete statements
	-> used to combine the queries and creating subquery.
	
	Where exists (subquery)  
	
	subquery: It is a select statement which returns at least one record set.
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
 
 
SELECT pz.item as "Common Products" FROM PizzaCompany pz WHERE EXISTS (
	SELECT * FROM PastaCompany ps WHERE pz.item = ps.item
);		-- returns common products of PizzaCompany and PastaCompany


/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE PastaCompany;