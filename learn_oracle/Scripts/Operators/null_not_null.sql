/*
	IS NOT NULL condition
	-> used to check not null values
	
	IS NULL   condition
	-> used to check null values

*/

CREATE TABLE PizzaCompany
(
	id int PRIMARY KEY,
	item varchar(50),
	weight varchar(30) NULL  
);

INSERT INTO PizzaCompany (id, item, weight) VALUES (1,'Farm House',77);
INSERT INTO PizzaCompany (id, item, weight) VALUES (2,'Green Wave',35);
INSERT INTO PizzaCompany (id, item) VALUES (3,'Maxican Pun');
INSERT INTO PizzaCompany (id, item, weight) VALUES (4,'Green Globe',46);
INSERT INTO PizzaCompany (id, item) VALUES (5,'Fine Veg');
INSERT INTO PizzaCompany (id, item, weight) VALUES (6,'Plain Pan',45);
INSERT INTO PizzaCompany (id, item) VALUES (7,'Fresh Pan');
 
SELECT * FROM PizzaCompany WHERE weight IS NULL ;	-- Selects Fresh Pan,Fine Veg,Maxican Pun

SELECT * FROM PizzaCompany WHERE weight IS NOT NULL ;	-- Selects Farm House,Green Wave,Green Globe,Plain Pan


/* example clean up */
DROP TABLE PizzaCompany;