/*
	INSERT ALL 
	-> used to insert multiple rows with a single INSERT statement
	-> You can insert the rows into one table or multiple tables by using only one SQL command.

	INSERT ALL  
	  INTO table_name (column1, column2, column_n) VALUES (expr1, expr2, expr_n)  
	  INTO table_name (column1, column2, column_n) VALUES (expr1, expr2, expr_n)  
	  INTO table_name (column1, column2, column_n) VALUES (expr1, expr2, expr_n)  
	SELECT * FROM dual;  

	1) table_name: it specifies the table in which you want to insert your records. We can use multiple tables for each statement
	2) column1, column2, column_n: this specifies the columns in the table to insert values.
	3) expr1, expr2, expr_n: this specifies the values to assign to the columns in the table.

	Do not put semicolon at end of all each insert
*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

/* Inserting multiple records into single table */

INSERT ALL
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (1,'Dominos','Los Angeles')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (2,'Pizza Hut','San Francisco')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (3,'Papa johns','San Diego')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (4,'Ah Pizz','Fremont')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (5,'Nino Pizza','Las Vegas')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (6,'Pizzeria','Boston')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (7,'chuck e cheese','Chicago')
SELECT * FROM dual;
COMMIT;

SELECT * FROM PizzaCompany;
DELETE FROM PizzaCompany;

CREATE TABLE PastaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

/* Inserting multiple records into multiple table */

INSERT ALL
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (1,'Dominos','Los Angeles')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (2,'Pizza Hut','San Francisco')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (3,'Papa johns','San Diego')
INTO PastaCompany (CompanyId, CompanyName, CompanyCity) VALUES (4,'Arrabita','Fremont')
INTO PastaCompany (CompanyId, CompanyName, CompanyCity) VALUES (5,'Chilly Penne','Las Vegas')
INTO PastaCompany (CompanyId, CompanyName, CompanyCity) VALUES (6,'Fuzzita','Boston')
INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (7,'chuck e cheese','Chicago')
SELECT * FROM dual;
COMMIT;

SELECT * FROM PizzaCompany;
SELECT * FROM PastaCompany;

/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE PastaCompany;