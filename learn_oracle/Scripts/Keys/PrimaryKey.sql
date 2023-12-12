/*
	A primary key is a single field or combination of fields that contains a unique record. 
	It must be filled. None of the field of primary key can contain a null value. A table can have only one primary key.
*/

CREATE TABLE customers  
( 	customer_id number(10) NOT NULL,  
  	customer_name varchar2(50) NOT NULL,  
  	city varchar2(50),  
  	CONSTRAINT customers_pk PRIMARY KEY (customer_id)  
);  


/* example clean up */
DROP TABLE customers;