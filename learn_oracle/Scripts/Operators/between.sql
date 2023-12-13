/*
	BETWEEN condition
	-> used to get the values from given range
	
	Expression BETWEEN value1 AND value2;
	
	True -> if value of expression evaluates between value1 and value2 including both end points/values
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
 
SELECT * FROM PizzaCompany WHERE weight BETWEEN 10 AND 45 ;	-- Selects Fine Veg,Fresh Pan,Green Wave, Plain Pan,Maxican Pun

/* example clean up */
DROP TABLE PizzaCompany;