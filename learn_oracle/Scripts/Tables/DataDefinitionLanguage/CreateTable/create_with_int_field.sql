-- CREATE TABLE statement is used to create a new table in the database.

/*

    NUMBER
    NUMBER(5)
    
    CREATE TABLE table_name  
    (   
      column1 datatype [ NULL | NOT NULL ],  
      column2 datatype [ NULL | NOT NULL ],  
      ...  
      column_n datatype [ NULL | NOT NULL ]  
    );  

*/

CREATE TABLE customers  
( 
    id number(3) NOT NULL,  
    id_long number NOT NULL,
    id_generated NUMBER NULL
);  

INSERT INTO customers VALUES (1, 1234567890, 2);
INSERT INTO customers VALUES (2, 1234567890, 2);
INSERT INTO customers VALUES (3, 1234567890, 2);
INSERT INTO customers VALUES (4, 1234567890, 2);
INSERT INTO customers VALUES (5, 1234567890, 2);
INSERT INTO customers (id, id_long) VALUES (6, 1234567890);
INSERT INTO customers (id, id_long) VALUES (7, 1234567890);
INSERT INTO customers (id, id_long) VALUES (8, 1234567890);
INSERT INTO customers (id, id_long) VALUES (9, 1234567890);

SELECT * FROM customers;

/* example clean up */
DROP TABLE customers;