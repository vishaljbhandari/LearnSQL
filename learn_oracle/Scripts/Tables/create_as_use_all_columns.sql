-- Creating table from another table using its all columns unconditionally

-- source table
CREATE TABLE customers  
( 
	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50)  
);  
DESC customers;

INSERT INTO customers VALUES (1, 'Prakash','Bangalore');
INSERT INTO customers VALUES (2, 'Anil', 'Lucknow');
INSERT INTO customers VALUES (3, 'Vijay', 'Bangalore');
INSERT INTO customers VALUES (4, 'Suresh', 'Mumbai');
INSERT INTO customers VALUES (5, 'Prakash', 'Bangalore');
INSERT INTO customers VALUES (6, 'Ajit', 'Delhi');
INSERT INTO customers VALUES (7, 'Rama', 'Chennai'); 
INSERT INTO customers VALUES (8, 'Krishna', 'Nagpur');
INSERT INTO customers VALUES (9, 'Sunita', 'Jaipur');

SELECT * FROM customers;

/*
	Technique-
	Use * in inner select query
*/
-- To select all rows dont use where clause in inner select query
CREATE TABLE new_customers_all_customers
AS (
	SELECT * 
	FROM customers 
);  
DESC new_customers_all_customers;
SELECT * FROM new_customers_all_customers;

-- To select selective rows use desired where clause in inner select query
CREATE TABLE new_customers_name_starts_with_a
AS (
	SELECT * 
	FROM customers 
	WHERE customer_name LIKE 'A%'
);  
DESC new_customers_name_starts_with_a;
SELECT * FROM new_customers_name_starts_with_a;

/* example clean up */
DROP TABLE customers;
DROP TABLE new_customers_all_customers;
DROP TABLE new_customers_name_starts_with_a;