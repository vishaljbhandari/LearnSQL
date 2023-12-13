/*
	INDEX
	Indexes are used to retrieve data from the database more quickly than otherwise. 
	The users cannot see the indexes, they are just used to speed up searches/queries.
	
	 Updating a table with indexes takes more time than updating a table without (because the indexes also need an update).
	 Create indexes on columns that will be frequently searched against
*/
/* 
	CREATE INDEX 
		is used to create indexes in tables.
	
	CREATE INDEX index_name
		ON table_name (column1, column2, ...);  
	
	CREATE UNIQUE INDEX Syntax
		is used to create unique indexes in tables. Duplicate values are not allowed.
		
	CREATE UNIQUE INDEX index_name
		ON table_name (column1, column2, ...);

	DROP INDEX
		used to delete an index in a table
	DROP INDEX index_name;
*/

CREATE TABLE customers  
( 	 
  	name varchar2(50) NOT NULL,  
  	city varchar2(50) DEFAULT 'None'
);  

CREATE INDEX idx_customers_name ON customers (name);

INSERT INTO customers (name) VALUES('Raj');

SELECT * FROM customers;

DROP INDEX idx_customers_name;

/* example clean up */
DROP TABLE customers;