/*
	AUTO INCREMENT Field
	allows a unique number to be generated automatically when a new record is inserted into a table
	Often this is the primary key field to be created automatically every time a new record is inserted.
	In oracle it has to be created with the sequence object (this object generates a number sequence).

	First we need to create a sequence then during insertion, for a field where we want auto INCREMENT
	we can call next value of that sequence and insert it
*/

CREATE SEQUENCE seq_customer
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

/*
	seq_customer.nextval -> gives incremented value each time 
*/

CREATE TABLE customers  
( 	 
  	cid int NOT NULL,  
  	name varchar2(50)
);  

INSERT INTO customers (cid, name) VALUES(seq_customer.nextval, 'Vishal');
INSERT INTO customers (cid, name) VALUES(seq_customer.nextval, 'Suresh');
INSERT INTO customers (cid, name) VALUES(seq_customer.nextval, 'Ramesh');

SELECT * FROM customers;

/* example clean up */
DROP TABLE customers;