-- The CREATE TABLE AS statement is used to create a table from an existing table by copying the columns of existing table.

/*

syntax -
CREATE TABLE new_table  
AS (SELECT * FROM old_table);   

*/

CREATE TABLE customers  
( customer_id number(10) NOT NULL,  
  customer_name varchar2(50) NOT NULL,  
  city varchar2(50)  
);  
DESC customers;

-- Creating table from only schema of another table, use always failing where clause for source table sothat none of row gets selected
CREATE TABLE new_customers
AS (
	SELECT * 
	FROM customers 
	WHERE 1 != 1
);  
DESC new_customers1;
/* example clean up */
DROP TABLE new_customers;

/*
	Creating table from all columns and rows of source table
	select all columns using * 
	and dont use any where clause
*/
CREATE TABLE new_customers
AS (
	SELECT * 
	FROM customers 
);  
DESC new_customers;
/* example clean up */
DROP TABLE new_customers;


/* example clean up */
DROP TABLE customers;
