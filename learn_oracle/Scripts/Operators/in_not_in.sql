/*
	IN
	-> used to check if a value is found in a collection/resultset
	
	expressions IN (value1, value2,.... value n)   
	
	NOT IN
	-> used to check if a value is not found in a collection/resultset
	
	expressions NOT IN (value1, value2,.... value n) 
	
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
 
 
SELECT item as "Common Products" FROM PizzaCompany WHERE item IN (
	SELECT item FROM PastaCompany
);		-- returns common products of PizzaCompany and PastaCompany


SELECT pz.item as "Common Products" FROM PizzaCompany pz WHERE pz.item IN (
	SELECT ps.item FROM PastaCompany ps WHERE pz.item = ps.item
);		-- returns common products of PizzaCompany and PastaCompany

SELECT item as "Common Products" FROM PizzaCompany WHERE item NOT IN (
	SELECT item FROM PastaCompany
);		-- returns non common products of PizzaCompany and PastaCompany


SELECT pz.item as "Common Products" FROM PizzaCompany pz WHERE pz.item NOT IN (
	SELECT ps.item FROM PastaCompany ps WHERE pz.item = ps.item
);		-- returns non common products of PizzaCompany and PastaCompany

/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE PastaCompany;