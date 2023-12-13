-- Creating table from another table using its all rows and columns unconditionally

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
	Dont use any where clause in inner select query
	Use * to select columns in inner select query
*/

CREATE TABLE new_customers
AS (
	SELECT *
	FROM customers 
);  
DESC new_customers;
SELECT * FROM new_customers;

/* example clean up */
DROP TABLE customers;
DROP TABLE new_customers;