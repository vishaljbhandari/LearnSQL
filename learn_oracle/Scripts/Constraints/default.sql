/*
	DEFAULT Constraint
	used to set a default value for a column.
	The default value will be added to all new records, if no other value is specified.
*/
/* 
	DEFAULT on CREATE TABLE
	
	CREATE TABLE table_name  
	(  
	  column1 datatype DEFAULT <default_value|expression>  
	  column2 datatype DEFAULT <default_value|expression>	  
	  ...
	  column datatype DEFAULT <default_value|expression>	  
	);  
	
	Add DEFAULT on ALTER TABLE	
	ALTER TABLE table_name MODIFY column_name DEFAULT <default_value|expression>;

	Drop DEFAULT on ALTER TABLE
	ALTER TABLE table_name MODIFY column_name DEFAULT NULL;	
*/

CREATE TABLE customers  
( 	 
  	name varchar2(50) NOT NULL,  
  	city varchar2(50) DEFAULT 'None'
);  

INSERT INTO customers (name) VALUES('Vishal');

SELECT * FROM customers;

ALTER TABLE customers MODIFY city DEFAULT NULL;

ALTER TABLE customers MODIFY city DEFAULT 'Delhi';

INSERT INTO customers (name) VALUES('Raj');

SELECT * FROM customers;

/* example clean up */
DROP TABLE customers;