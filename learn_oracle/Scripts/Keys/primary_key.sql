/*
	A primary Key
	a single field or combination of fields that contains a unique record. 
	It must be filled. 
	None of the field of primary key can contain a null value. 
	A table can have only one primary key.
*/
/* 
	Adding primary key constraint during creating table
	
	CREATE TABLE table_name  
	(  
	  column1 datatype null/not null,  
	  column2 datatype null/not null,  
	  ...  
	  CONSTRAINT constraint_name PRIMARY KEY (column1, column2, ... column_n)  
	);  
*/
CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50),  
  	CONSTRAINT customers_pk PRIMARY KEY (customer_id)  
);  

/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50) 
);  
/*
	Adding primary key constraint after creating table using ALTER TABLE statement

	ALTER TABLE table_name  
	ADD CONSTRAINT constraint_name PRIMARY KEY (column1, column2, ... column_n);  

*/
ALTER TABLE customers ADD CONSTRAINT customers_pk PRIMARY KEY(customer_id);  

/*
    Retrieving Primary Key
    
    SELECT column_name, constraint_name 
    FROM all_cons_columns 
    WHERE constraint_name = (
        SELECT constraint_name 
        FROM user_constraints 
        WHERE UPPER(table_name) = UPPER('tableName') 
            AND UPPER(constraint_name) = UPPER('primaryKeyName')
    );  
*/

-- selecting particular primary key
SELECT column_name, constraint_name
FROM all_cons_columns 
WHERE constraint_name = (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE UPPER(table_name) = UPPER('customers') 
        AND UPPER(constraint_name) = UPPER('customers_pk')
);  

-- select all constraints on a table
SELECT column_name, constraint_name
FROM all_cons_columns 
WHERE constraint_name IN (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE UPPER(table_name) = UPPER('customers')
);  

/*
	Disabling Primary Key
	
	ALTER TABLE table_name  
	DISABLE CONSTRAINT constraint_name;  
*/

ALTER TABLE customers DISABLE CONSTRAINT customers_pk; 

/*
	Enabling Primary Key
	
	ALTER TABLE table_name  
	ENABLE  CONSTRAINT constraint_name;  
*/

ALTER TABLE customers ENABLE  CONSTRAINT customers_pk; 

/*
	Drop Primary Key
	
	ALTER TABLE table_name  
	DROP CONSTRAINT constraint_name;  
*/
ALTER TABLE customers DROP CONSTRAINT customers_pk;  

/* example clean up */
DROP TABLE customers;