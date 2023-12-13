/*
	HAVING     
	-> used with GROUP BY Clause to restrict the groups of returned rows where condition is TRUE.

	SELECT expression1, expression2, ... expression_n,   
		aggregate_function (aggregate_expression)  
	FROM tables  
	WHERE conditions  
	GROUP BY expression1, expression2, ... expression_n  
	HAVING having_condition;       	
	
	expression1, expression2, ... expression_n: It specifies the expressions that are not encapsulated within aggregate function. These expressions must be included in GROUP BY clause.
	aggregate_function: It specifies the aggregate functions i.e. SUM, COUNT, MIN, MAX or AVG functions.
	aggregate_expression: It specifies the column or expression on that the aggregate function is based on.
	tables: It specifies the table from where you want to retrieve records.
	conditions: It specifies the conditions that must be fulfilled for the record to be selected.
	having_conditions: It specifies the conditions that are applied only to the aggregated results to restrict the groups of returned rows.

	Grouping is done with aggregated functions
*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30),
    PizzaSold int
);

INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (1,'Dominos','Los Angeles', 20);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (2,'Pizza Hut','San Francisco', 40);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (3,'Papa johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (4,'Ah Pizz','Fremont', 47);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (5,'Nino Pizza','Las Vegas', 75);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (6,'Pizzeria','Boston', 32);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (7,'chuck e cheese','Chicago', 54);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (8,'New johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (9,'Papa johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (10,'Ah Pizz','Fremont', 47);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (11,'Nino Pizza','Las Vegas', 75);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (12,'Pizzeria','Fremont', 32);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (13,'chuck e cheese','Boston', 54);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (14,'New johns','San Diego', 36);
COMMIT;

/* Group By using sum function - sum of pizza sold by CompanyCity with 100+ sold pizza */
SELECT CompanyCity, sum(PizzaSold)
FROM PizzaCompany
GROUP BY CompanyCity
HAVING sum(PizzaSold) > 100;

/* Group By using sum function - sum of pizza sold by CompanyName with 100+ sold pizza */
SELECT CompanyName, sum(PizzaSold)
FROM PizzaCompany
GROUP BY CompanyName
HAVING sum(PizzaSold) > 100;

/* Group By using count function - count of outlet more than one*/
SELECT CompanyName, count(CompanyName)
FROM PizzaCompany
GROUP BY CompanyName
HAVING count(CompanyName) > 1;

/* Group By using count function - count of Pizzeria outlet in cities exactly one */
SELECT CompanyCity, count(CompanyCity)
FROM PizzaCompany
WHERE CompanyName = 'Pizzeria'
GROUP BY CompanyCity
HAVING count(CompanyCity) = 1;

/* Group By using count function - count of outlet in cities more than two */
SELECT CompanyCity, count(CompanyCity)
FROM PizzaCompany
GROUP BY CompanyCity
HAVING count(CompanyCity) > 2;

/* Group By using count function - count of outlets in Chicago */
SELECT CompanyName, count(CompanyCity)
FROM PizzaCompany
WHERE CompanyCity = 'Fremont'
GROUP BY CompanyName
HAVING count(CompanyCity) > 1;

/* example clean up */
DROP TABLE PizzaCompany;