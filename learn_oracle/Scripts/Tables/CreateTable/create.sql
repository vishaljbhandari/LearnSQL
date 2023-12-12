
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

-- Create Table using primary key
CREATE TABLE customer_pk 
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50),  
  	CONSTRAINT customers_pk PRIMARY KEY (customer_id)  
);  


/* example clean up */
DROP TABLE customers;
DROP TABLE customer_pk;