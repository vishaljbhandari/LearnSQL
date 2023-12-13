/*
	DISTINCT   
	-> used to remove the duplicate records from the result set. 
		It is only used with SELECT statement.

	SELECT DISTINCT expressions  
	FROM tables  
	WHERE conditions;   

	expressions:It specifies the columns that you want to retrieve.
	tables: It specifies the table from where you want to retrieve records.
	conditions: It specifies the conditions that must be fulfilled.
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
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (8,'New johns','San Diego');
COMMIT;

/* 
	Select all DISTINCT CompanyCity
*/
SELECT DISTINCT CompanyCity  
FROM PizzaCompany ;

/* in case of multiple expression, it shows distinct combination of given columns */
SELECT DISTINCT CompanyCity, CompanyId
FROM PizzaCompany ;

/* example clean up */
DROP TABLE PizzaCompany;