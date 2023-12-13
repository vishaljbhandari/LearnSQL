/*
	UNIQUE Constraint
	The UNIQUE constraint ensures that all values in a column are different.
	Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
	A PRIMARY KEY constraint automatically has a UNIQUE constraint.
	A table can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint.
*/
/* 
	Adding Unique key constraint during creating table along with column
	
	CREATE TABLE customers  
	( 	customer_id number(10) NOT NULL UNIQUE,  
		customer_name varchar2(50) NOT NULL,  
		city varchar2(50)
	);  
	
	Adding Unique key constraint during creating table seperately with name
	
	CREATE TABLE customers  
	( 	customer_id number(10) NOT NULL,  
		customer_name varchar2(50) NOT NULL,  
		city varchar2(50),  
		CONSTRAINT customers_uk UNIQUE (customer_id, customer_name)
	);
	
	Adding Unique key constraint after creating table using alter table
	ALTER TABLE customers ADD UNIQUE (customer_id);
	
	Adding Unique key constraint after creating table seperately with name
	ALTER TABLE customers ADD CONSTRAINT UC_CUSTOMERS UNIQUE (customer_id, customer_name);
*/
CREATE TABLE customers  
( 	customer_id number(10) NOT NULL UNIQUE,  
	customer_name varchar2(50) NOT NULL,  
	city varchar2(50)
);  
/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
	customer_name varchar2(50) NOT NULL,  
	city varchar2(50)
);  
ALTER TABLE customers ADD UNIQUE (customer_id);
/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
	customer_name varchar2(50) NOT NULL,  
	city varchar2(50),  
	CONSTRAINT customers_uk UNIQUE (customer_id, customer_name)
);
/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
	customer_name varchar2(50) NOT NULL,  
	city varchar2(50)
);
ALTER TABLE customers ADD CONSTRAINT customers_uk UNIQUE (customer_id, customer_name);

/*
	DROP a UNIQUE Constraint
*/
ALTER TABLE customers DROP CONSTRAINT customers_uk;

/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
	customer_name varchar2(50) NOT NULL,  
	city varchar2(50),  
	CONSTRAINT customers_uk UNIQUE (customer_id, customer_name)
);

/*
    Retrieving Unique Key
    
    SELECT column_name, constraint_name 
    FROM all_cons_columns 
    WHERE constraint_name = (
        SELECT constraint_name 
        FROM user_constraints 
        WHERE UPPER(table_name) = UPPER('tableName') 
            AND UPPER(constraint_name) = UPPER('uniqueKeyName')
    );  
*/

-- selecting particular unique key
SELECT column_name, constraint_name
FROM all_cons_columns 
WHERE constraint_name = (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE UPPER(table_name) = UPPER('customers') 
        AND UPPER(constraint_name) = UPPER('customers_uk')
);  

-- select all constraints on a table
SELECT column_name, constraint_name
FROM all_cons_columns 
WHERE constraint_name IN (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE UPPER(table_name) = UPPER('customers')
);  

ALTER TABLE customers DROP CONSTRAINT customers_uk;

/* example clean up */
DROP TABLE customers;