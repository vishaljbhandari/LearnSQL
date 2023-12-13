/*
	LIKE
	-> Used in query where clause using wildcard
	-> It allows pattern matching
	
	expression LIKE pattern [ESCAPE 'escape_character' ] 
	
	expression: name of column
	pattern: patter to be matched in expression. 
	
	Pattern can be in one of the following:-
	Wildcard	Explanation
		%		Used for matching string
		_		Used for matching single character
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
 
SELECT * FROM PizzaCompany WHERE CompanyCity LIKE '_remont';	-- Selects Fremont
SELECT * FROM PizzaCompany WHERE CompanyCity LIKE 'San%';	-- Selects San Francisco, San Diego
SELECT * FROM PizzaCompany WHERE CompanyName LIKE '%Pizza';	-- Selects Nino Pizza
SELECT * FROM PizzaCompany WHERE CompanyName LIKE '%Pizza%';	-- Selects Nino Pizza, Pizza Hut

/* example clean up */
DROP TABLE PizzaCompany;