/*
	NOT NULL Constraint
	By default, a column can hold NULL values.
	The NOT NULL constraint enforces a column to NOT accept NULL values.
	This enforces a field to always contain a value, 
	you cannot insert a new record, or update a record without adding a value to this field.
*/
/* 
	NOT NULL on CREATE TABLE
	
	CREATE TABLE table_name  
	(  
	  column1 datatype not null,  
	  column2 datatype not null,  
	  ...
	  column datatype not null	  
	);  
	
	SQL NOT NULL on ALTER TABLE
	
	ALTER TABLE table_name ALTER COLUMN column_name column_type NOT NULL;
	ALTER TABLE table_name MODIFY column_name column_type NOT NULL;
*/


CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50)
);  

/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10),  
  	customer_name varchar2(50),  
  	city varchar2(50) 
);  

-- Adding NOT NULL
/* ALTER TABLE customers ALTER COLUMN customer_id number(10) NOT NULL; // OLD Oracle Verions */

ALTER TABLE customers MODIFY customer_id number(10) NOT NULL;

-- Removing NOT NULL
/* ALTER TABLE customers ALTER COLUMN customer_id number(10) NULL; // OLD Oracle Verions */

ALTER TABLE customers MODIFY customer_id number(10) NULL;

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