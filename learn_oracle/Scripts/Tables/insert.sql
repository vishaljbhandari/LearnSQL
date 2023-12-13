/*
	INSERT 
	-> used to add a single record or multiple records into the table.

	Inserting a single record using the Values keyword
	INSERT INTO table  
	(column1, column2, ... column_n )  
	VALUES  
	(expression1, expression2, ... expression_n );    

	Inserting multiple records using a SELECT statement
	INSERT INTO table  
		(column1, column2, ... column_n )  
	SELECT expression1, expression2, ... expression_n  
	FROM source_table  
	WHERE conditions;  

	table_name: it specifies the table in which you want to insert your records.
	column1, column2, column_n: this specifies the columns in the table to insert values.
	expr1, expr2, expr_n: this specifies the values to assign to the columns in the table.
	The source table when inserting data from another table.
	The conditions that must be met for the records to be inserted.

*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

/* Inserting single records into table */
INSERT INTO PizzaCompany VALUES (1,'Dominos','Los Angeles');

/* Inserting single records into table for specified columns */
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (2,'Pizza Hut','San Francisco');

/* Inserting single records into table for specified few columns, skipping few others */
/* only NULLABLE columns can be skipped from insert, else it will give error */
INSERT INTO PizzaCompany (CompanyId, CompanyName) VALUES (3,'Papa johns');	
COMMIT;

SELECT * FROM PizzaCompany;
COMMIT;

CREATE TABLE NewPizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

/* insert for all columns from another table */
INSERT INTO NewPizzaCompany SELECT * FROM PizzaCompany;
SELECT * FROM NewPizzaCompany;
DELETE FROM NewPizzaCompany;

INSERT INTO NewPizzaCompany (CompanyId, CompanyName, CompanyCity) SELECT CompanyId, CompanyName, CompanyCity FROM PizzaCompany;
SELECT * FROM NewPizzaCompany;
DELETE FROM NewPizzaCompany;
COMMIT;

INSERT INTO NewPizzaCompany (CompanyId, CompanyName) SELECT CompanyId, CompanyName FROM PizzaCompany;
SELECT * FROM NewPizzaCompany;
DELETE FROM NewPizzaCompany;
COMMIT;

/* example clean up */
DROP TABLE PizzaCompany;
DROP TABLE NewPizzaCompany;