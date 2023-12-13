-- CREATE TABLE statement is used to create a new table in the database.

/*

    varchar(5)
    varchar2(5)
    
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
    name1 varchar(3) NOT NULL,   
    name2 varchar2(10) NOT NULL
);  

INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');
INSERT INTO customers VALUES ('Vis', 'ABCDEF');

SELECT * FROM customers;

/* example clean up */
DROP TABLE customers;