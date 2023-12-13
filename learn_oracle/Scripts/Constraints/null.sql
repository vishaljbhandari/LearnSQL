/*
	NULL Constraint
	The NULL constraint allows a column to accept NULL values.
	you can insert a new record, or update a record without adding a value to this field.
*/
/* 
	NULL on CREATE TABLE
	
	CREATE TABLE table_name  
	(  
	  column1 datatype null,  
	  column2 datatype null,  
	  ...
	  column datatype null	  
	);  
	
	SQL NULL on ALTER TABLE
	
	ALTER TABLE table_name ALTER COLUMN column_name column_type NULL;
	ALTER TABLE table_name MODIFY column_name column_type NULL;
*/


CREATE TABLE customers  
( 	customer_id number(10) NULL,  
  	customer_name varchar2(50) NULL,  
  	city varchar2(50)
);  

/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10),  
  	customer_name varchar2(50),  
  	city varchar2(50) 
);  

-- Allowing NULL
/* ALTER TABLE customers ALTER COLUMN customer_id number(10) NULL; // OLD Oracle Verions */

ALTER TABLE customers MODIFY customer_id number(10) NULL;

-- Preventing NULL
/* ALTER TABLE customers ALTER COLUMN customer_id number(10) NOT NULL; // OLD Oracle Verions */

ALTER TABLE customers MODIFY customer_id number(10) NOT NULL;

-- select all constraints on a table
SELECT column_name, constraint_name
FROM all_cons_columns 
WHERE constraint_name IN (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE UPPER(table_name) = UPPER('customers')
);  

/* example clean up */
DROP TABLE customers;