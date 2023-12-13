
-- CREATE TABLE statement is used to create a new table in the database.
-- To create a table, you have to name that table and define its columns and datatype for each column.

/*

CREATE TABLE table_name  
(   
  column1 datatype [ NULL | NOT NULL ],  
  column2 datatype [ NULL | NOT NULL ],  
  ...  
  column_n datatype [ NULL | NOT NULL ]  
);  

table_name: 
	It specifies the name of the table which you want to create.
column1, column2, ... column n: 
	It specifies the columns which you want to add in the table. 
	Every column must have a datatype. Every column should either be defined as "NULL" or "NOT NULL". 
	In the case, the value is left blank; it is treated as "NULL" as default.

*/

CREATE TABLE customers  
( customer_id number(10) NOT NULL,  
  customer_name varchar2(50) NOT NULL,  
  city varchar2(50)  
);  

INSERT INTO customers VALUES (1, 'Prakash', 'Bangalore');
INSERT INTO customers VALUES (2, 'Anil', 'Lucknow');
INSERT INTO customers VALUES (3, 'Vijay', 'Bangalore');
INSERT INTO customers VALUES (4, 'Suresh', 'Mumbai');
INSERT INTO customers VALUES (5, 'Prakash', 'Bangalore');
INSERT INTO customers VALUES (6, 'Ajit', 'Delhi');
INSERT INTO customers VALUES (7, 'Rama', 'Chennai');
INSERT INTO customers VALUES (8, 'Krishna', 'Nagpur');
INSERT INTO customers VALUES (9, 'Sunita', 'Jaipur');

SELECT * FROM customers;

-- Create Table using primary key
CREATE TABLE customer_pk 
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50),  
  	CONSTRAINT pk_customer_pk_customer_id PRIMARY KEY (customer_id)  
);  
INSERT INTO customer_pk VALUES (1, 'Prakash', 'Bangalore');
INSERT INTO customer_pk VALUES (2, 'Anil', 'Lucknow');
INSERT INTO customer_pk VALUES (3, 'Vijay', 'Bangalore');
INSERT INTO customer_pk VALUES (4, 'Suresh', 'Mumbai');
INSERT INTO customer_pk VALUES (5, 'Prakash', 'Bangalore');
INSERT INTO customer_pk VALUES (6, 'Ajit', 'Delhi');
INSERT INTO customer_pk VALUES (7, 'Rama', 'Chennai');
INSERT INTO customer_pk VALUES (8, 'Krishna', 'Nagpur');
INSERT INTO customer_pk VALUES (9, 'Sunita', 'Jaipur');

SELECT * FROM customer_pk;

/* example clean up */
DROP TABLE customers;
DROP TABLE customer_pk;