/*
	NOT condition, NOT operator
	-> Used in query where clause condition
	-> used to negate the given condition
	-> Unary operator
	
	NOT condition  
	
    with NOT NULL, use IS
    IS NOT NULL
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
 
SELECT * FROM PizzaCompany WHERE CompanyCity IS NOT NULL;	-- Selects all
SELECT * FROM PizzaCompany WHERE NOT CompanyCity LIKE 'San%';	-- Selects all excepts San Francisco, San Diego

/* example clean up */
DROP TABLE PizzaCompany;