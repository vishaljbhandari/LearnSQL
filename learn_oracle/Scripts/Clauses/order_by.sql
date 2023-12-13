/*
	ORDER BY    
	-> used to sort or re-arrange the records in the result set. 
		The ORDER BY clause is only used with SELECT statement.

	SELECT expressions  
	FROM tables  
	WHERE conditions  
	ORDER BY expression [ ASC | DESC ];   

	SELECT expressions  
	FROM tables  
	WHERE conditions  
	ORDER BY expression [ ASC | DESC ], expression [ ASC | DESC ];   	
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

/* Ordering without ASC/DESC attribute,By default is ASC */
SELECT *  
FROM PizzaCompany
ORDER BY CompanyCity;

/* Ordering ASC(ascending) attribute */
SELECT *  
FROM PizzaCompany
ORDER BY CompanyCity ASC;

/* Ordering DESC(descending) attribute */
SELECT *  
FROM PizzaCompany
ORDER BY CompanyCity DESC;

/* Ordering multiple level */
SELECT CompanyCity, CompanyName  
FROM PizzaCompany
ORDER BY 
	CompanyCity ASC,        -- first sort ASC on CompanyCity
	CompanyName DESC;       -- if first matches then sort DESC on CompanyName

/* example clean up */
DROP TABLE PizzaCompany;