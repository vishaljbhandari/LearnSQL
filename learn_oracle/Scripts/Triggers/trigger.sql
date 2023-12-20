/*
	Trigger
	A procedures that are implicitly executed when an INSERT, UPDATE or DELETE statement is issued against the associated table 
	
	Firing Point: BEFORE
		BEFORE INSERT TRIGGER
		BEFORE UPDATE TRIGGER
		BEFORE DELETE TRIGGER
		
	Firing Point: AFTER
		AFTER INSERT TRIGGER
		AFTER UPDATE TRIGGER
		AFTER DELETE TRIGGER
*/

set serveroutput on size 30000;

/* creating a table for function functioning */
CREATE TABLE UserTable
(
	id number(10) PRIMARY KEY,
	name varchar2(100) NOT NULL,
	salary number NOT NULL
); 

INSERT INTO UserTable VALUES (1, 'ADAM', 25000);
INSERT INTO UserTable VALUES (2, 'PARAM', 75000);
INSERT INTO UserTable VALUES (3, 'RAJ', 35000);
INSERT INTO UserTable VALUES (4, 'TOM', 20000);
INSERT INTO UserTable VALUES (5, 'NOM', 36000);

SELECT * FROM UserTable;

/* example clean up */
DROP TABLE UserTable;