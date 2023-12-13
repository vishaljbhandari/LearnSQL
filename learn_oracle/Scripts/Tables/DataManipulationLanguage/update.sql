/*
	UPDATE 
	-> used to update the existing records in a table.

	Traditional Update
	UPDATE table  
	SET column1 = expression1,  
		column2 = expression2,  
		...  
		column_n = expression_n  
	WHERE conditions;     
    
	Updating table by selecting records from another table
	UPDATE table1  
	SET column1 = (SELECT expression1  
				   FROM table2  
				   WHERE conditions)  
	WHERE conditions; 

	1) column1, column2, ... column_n:
	It specifies the columns that you want to update.
	2) expression1, expression2, ...expression_n:
	This specifies the values to assign to the column1, column2, ?. column_n.
	3) conditions:It specifies the conditions that must be fulfilled for execution of UPDATE stateme.   

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

-- Updating single column

UPDATE PizzaCompany
SET 
	CompanyCity = 'Fremont'
WHERE 
	CompanyName = 'Pizzeria';

-- Updating multiple columns

UPDATE PizzaCompany
SET 
	CompanyCity = 'Fremont',
	CompanyName = 'Pizzeria'
WHERE CompanyId = 6;
COMMIT;

SELECT * FROM PizzaCompany;

/*
	Updating records By selecting records from another table
	sub query from another table returns result which is set to current table
	field returning and field getting set both must be compatible
*/
UPDATE PizzaCompany
SET 
	CompanyCity = (
		SELECT CompanyCity
		FROM PizzaCompany
		WHERE CompanyName = 'Papa johns'
	)
WHERE 
	CompanyName = 'Pizzeria';
COMMIT;
SELECT * FROM PizzaCompany;

/* example clean up */
DROP TABLE PizzaCompany;