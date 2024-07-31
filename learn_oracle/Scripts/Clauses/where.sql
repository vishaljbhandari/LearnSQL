/*
	WHERE
	The WHERE clause filters the rows coming from the FROM clause, returning the rows satisfying a given condition.
	
	where_clause ::= WHERE expression
	
	For each context row, the expression in the WHERE clause is evaluated. 
	The result of this expression must have type BOOLEAN ?. 
	
	If the result is false, or empty, or NULL, the row is skipped; otherwise the row is passed on to the next clause
	
	WHERE expression can be a simple or compund where clause. It can be any boolean expression.
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

/* Selecting None, If condition returns always false */
SELECT CompanyCity, sum(PizzaSold)
FROM PizzaCompany
WHERE 0;

SELECT CompanyCity, sum(PizzaSold)
FROM PizzaCompany
WHERE 1=2;

/* Selecting None, If condition returns always true */
SELECT CompanyCity, sum(PizzaSold)
FROM PizzaCompany
WHERE;

SELECT CompanyCity, sum(PizzaSold)
FROM PizzaCompany
WHERE 1=1;

/* Simple Condition */
SELECT CompanyName, sum(PizzaSold)
FROM PizzaCompany
WHERE PizzaSold > 25;

/* Compond Condition */
SELECT CompanyName, count(CompanyName)
FROM PizzaCompany
WHERE PizzaSold > 25 AND CompanyCity = 'Boston';

/* example clean up */
DROP TABLE PizzaCompany;