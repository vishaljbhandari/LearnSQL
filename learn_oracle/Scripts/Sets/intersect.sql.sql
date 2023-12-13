/*
	INTERSECT operation
	-> When multiple SELECT queries are joined using UNION operator, 
		Oracle displays the common result from all the compounded SELECT queries,
		without ignoring the NULL values
		return only those results, which are in both select query

	SELECT expression1, expression2, ... expression_n  
		FROM table1  
		WHERE conditions  
	INTERSECT 
	SELECT expression1, expression2, ... expression_n  
		FROM table2  
		WHERE conditions;         

	The number of expressions must be same in both of the SELECT statements.
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
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (8,'Pino Pizza','Las Vegas');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (9,'Pizzeria','Boston');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (0,'Pasta e cheese','Chicago');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (10,'Papa johns','Chicago');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (11,'Ah Pizz','Fremont');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (12,'Nino Pizza','Fremont');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (13,'Papa johns','San Diego');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (14,'Ah Pizz','Fremont');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (15,'Nino Pizza','Boston');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (16,'Pizzeria','Boston');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (17,'chuck e cheese','Los Angeles');

SELECT * FROM PizzaCompany;

SELECT CompanyId, CompanyName, CompanyCity 
FROM PizzaCompany 
WHERE CompanyName = 'Nino Pizza'
INTERSECT 
SELECT CompanyId, CompanyName, CompanyCity 
FROM PizzaCompany 
WHERE CompanyName = 'Pizzeria';


SELECT CompanyCity 
FROM PizzaCompany 
WHERE CompanyName = 'Nino Pizza'
INTERSECT 
SELECT CompanyCity 
FROM PizzaCompany 
WHERE CompanyName = 'Pizzeria';


SELECT CompanyId, CompanyName, CompanyCity 
FROM PizzaCompany 
WHERE CompanyCity = 'Los Angeles'
INTERSECT 
SELECT CompanyId, CompanyName, CompanyCity 
FROM PizzaCompany 
WHERE CompanyCity IN('Boston', 'Chicago');

SELECT CompanyName 
FROM PizzaCompany 
WHERE CompanyCity = 'Los Angeles'
INTERSECT 
SELECT CompanyName 
FROM PizzaCompany 
WHERE CompanyCity IN('Boston', 'Chicago');

/* example clean up */
DROP TABLE PizzaCompany;