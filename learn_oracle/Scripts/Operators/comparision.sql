/*
	Comparison operators 
	-> used to compare values with the where clause	
	
	equal (=) operator is used for checking equality
	operand1 = operand2
	
	Not equal (!=) operator is used for checking inequality
	operand1 != operand2
	
	Not equal (<>) operator is used for checking inequality
	operand1 <> operand2
	
	Greater than (>) operator is used for checking Greater than
	operand1 > operand2
	
	Greater than or equal (>=) operator is used for checking Greater than or equal
	operand1 >= operand2
	
	Less than (<) operator is used for checking Less than
	operand1 < operand2
	
	Less than or equal (<=) operator is used for checking Less than or equal
	operand1 <= operand2
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

SELECT * FROM PizzaCompany WHERE weight = 10;
SELECT * FROM PizzaCompany WHERE weight <> 10;
SELECT * FROM PizzaCompany WHERE weight != 10;
SELECT * FROM PizzaCompany WHERE weight > 10;
SELECT * FROM PizzaCompany WHERE weight >= 10;
SELECT * FROM PizzaCompany WHERE weight < 20;
SELECT * FROM PizzaCompany WHERE weight <= 10;

/* example clean up */
DROP TABLE PizzaCompany;