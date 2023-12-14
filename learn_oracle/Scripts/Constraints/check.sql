/*
	CHECK Constraint
	used to limit the value range that can be placed in a column.
	If you define a CHECK constraint on a column it 
		will allow only certain values for this column.
		can limit the values in certain columns based on values in other columns in the row.
	
	The naming convension for a check constraint should be "CHK_<TableName>_<ColumnName>". (Upper case)
*/
/* 
	CHECK on CREATE TABLE
	
	CREATE TABLE table_name  
	(  
	  column1 datatype CHECK (condition),  
	  column2 datatype CHECK (condition),  
	  ...
	  column datatype CHECK (condition),  
	);  
	
	SQL CHECK on ALTER TABLE
	
	ALTER TABLE table_name ADD CHECK(condition);
	ALTER TABLE table_name ADD CONSTRAINT constrain_name CHECK (condition);
	
	DROP a CHECK Constraint
	ALTER TABLE table_name DROP CONSTRAINT constrain_name;
*/


CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50),
	Age int CHECK (Age>=18)
);  

/* example clean up */
DROP TABLE customers;

CREATE TABLE customers  
( 	customer_id number(10),  
  	customer_name varchar2(50),  
  	city varchar2(50),
	Age int
);  

-- Adding CHECK

ALTER TABLE customers ADD CHECK(Age<=60) ;

ALTER TABLE customers ADD CONSTRAINT age_check_ck CHECK(Age>=18);

-- Below insertions are not allowed
-- INSERT INTO customers VALUES (1,'Raj', 'Bangalore', 17);
-- INSERT INTO customers VALUES (1,'Raj', 'Bangalore', 65);

-- Below insertions are allowed
INSERT INTO customers VALUES (1,'Raj', 'Bangalore', 25);

-- DROP a CHECK Constraint
ALTER TABLE customers DROP CONSTRAINT age_check_ck;

-- Below insertions are allowed, After dropping constraint
INSERT INTO customers VALUES (1,'Raj', 'Bangalore', 20);

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