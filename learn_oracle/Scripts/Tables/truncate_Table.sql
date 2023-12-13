/*
	TRUNCATE TABLE
	-> used to remove all records from a table
	-> It works same as DELETE statement but without specifying a WHERE clause.
	-> It is generally used when you don?t have to worry about rolling back
	-> Once a table is truncated, it can?t be rolled back. 
	-> The TRUNCATE TABLE statement does not affect any of the table?s indexes, triggers or dependencies.			

	TRUNCATE TABLE [schema_name.]table_name;
    
	schema_name: This parameter specifies the name of the schema that the table belongs to. It is optional.
	table_name: It specifies the table that you want to truncate.   

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
 
SELECT * FROM PizzaCompany;

TRUNCATE TABLE PizzaCompany;
  
SELECT * FROM PizzaCompany;

/* example clean up */
DROP TABLE PizzaCompany;