/*
	SELECT  
	-> used to retrieve data from one or more than one tables, object tables, views, object views etc.

	SELECT expressions  
	FROM tables  
	WHERE conditions;     

	expressions: It specifies the columns or calculations that you want to retrieve.

	tables:This parameter specifies the tables that you want to retrieve records from. There must be at least one table within the FROM clause.
	conditions: It specifies the conditions that must be followed for selection.

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
COMMIT;

/* 
	select all fields and all rows
	all fields -> specify *
	all rows -> dont specify any where clause
*/
SELECT * FROM PizzaCompany;

/* 
	select specific fields and all rows 
	select specific fields -> specify those fields
	all rows -> dont specify any where clause
*/
SELECT CompanyName, CompanyCity FROM PizzaCompany;

/* 
	select all fields and specific rows 
	select specific fields -> *
	all rows -> specify where clause
*/
SELECT * FROM PizzaCompany WHERE CompanyCity = 'Fremont';

/* 
	select specific fields and specific rows 
	select specific fields -> specify those fields
	all rows -> specify where clause
*/
SELECT CompanyName, CompanyCity FROM PizzaCompany WHERE CompanyCity = 'Fremont';

/* example clean up */
DROP TABLE PizzaCompany;