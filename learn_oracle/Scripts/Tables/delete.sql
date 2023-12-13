/*
	DELETE
	-> used to remove or delete a single record or multiple records from a table
	

	DELETE FROM table_name WHERE conditions;   
    
	table_name: It specifies the table which you want to delete.
	conditions: It specifies the conditions that must met for the records to be deleted.   

	This statement will delete all records matching to where clause condition
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

SELECT * FROM PizzaCompany;

DELETE FROM PizzaCompany WHERE CompanyCity = 'Chicago';
COMMIT;
  
SELECT * FROM PizzaCompany;

/*
	Deleting all records
	DELETE FROM PizzaCompany;			// without any where clause
	DELETE FROM PizzaCompany WHERE 1 = 1;
*/

DELETE FROM PizzaCompany;
COMMIT;

/* example clean up */
DROP TABLE PizzaCompany;