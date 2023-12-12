-- Creating table from another table using its all rows unconditionally

-- source table
CREATE TABLE customers  
( 
	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50)  
);  
DESC customers;

INSERT INTO customers VALUES (1, "Prakash", "Bangalore");
INSERT INTO customers VALUES (2, "Anil", "Lucknow");
INSERT INTO customers VALUES (3, "Vijay", "Bangalore");
INSERT INTO customers VALUES (4, "Suresh", "Mumbai");
INSERT INTO customers VALUES (5, "Prakash", "Bangalore");
INSERT INTO customers VALUES (6, "Ajit", "Delhi");
INSERT INTO customers VALUES (7, "Rama", "Chennai");
INSERT INTO customers VALUES (8, "Krishna", "Nagpur");
INSERT INTO customers VALUES (9, "Sunita", "Jaipur");

SELECT * FROM customers;

/*
	Technique-
	Dont use any where clause in inner select query
*/
-- To select selective columns use required columns in inner select query
CREATE TABLE new_customers_only_names
AS (
	SELECT customer_name
	FROM customers 
);  
DESC new_customers_only_names;
SELECT * FROM new_customers_only_names;

CREATE TABLE new_customers_with_city
AS (
	SELECT customer_name, city
	FROM customers 
);  
DESC new_customers_with_city;
SELECT * FROM new_customers_with_city;

/* example clean up */
DROP TABLE customers;
DROP TABLE new_customers_only_names;
DROP TABLE new_customers_with_city;