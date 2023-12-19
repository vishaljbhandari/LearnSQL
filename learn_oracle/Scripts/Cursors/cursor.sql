/*
	A cursor is a pointer to a private SQL area 
		that stores information about the processing of a SELECT or DML statements like INSERT, UPDATE, DELETE or MERGE.
	
	Cursor is a mechanism which facilitates you to assign a name to a SELECT statement and manipulate the information within that SQL statement.
	
	How to declare cursor
	Syntax

	CURSOR cursor_name  
	IS  
	  SELECT_statement;   
	
	OPEN cursor_name;  
	
	FETCH cursor_name INTO variable_list; 

	CLOSE cursor_name;  	
*/

set serveroutput on size 30000;

/* creating a table for Cursor functioning */
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

CREATE OR REPLACE Function FindUser  
	( salaryNumber IN number )  
RETURN varchar2  
IS  
	userName varchar2(50);  
	CURSOR UserCursor
	IS
	SELECT name FROM UserTable WHERE salary = salaryNumber;
BEGIN
	/* 	
		Opening a Cursor
		After the declaration of the cursor, you have to use the open statement to open the cursor.
	*/
	OPEN UserCursor;
		/* fetching rows from cursor */
		FETCH UserCursor INTO userName;
		
		/* checking if cursor has found any value or not */
		IF UserCursor%NOTFOUND THEN 
			userName := NULL;
		END IF;
	/*
		CLOSE statement is a final step and it is used to close the cursor once you have finished using it.
	*/
	CLOSE UserCursor;
RETURN userName;
END;

DECLARE  
   userName varchar2(50);  
BEGIN  
   userName := FindUser(35000);  
   dbms_output.put_line('User with 35000 salary is : ' || userName);  
END;  
/ 

/* Dropping Function */
DROP FUNCTION FindUser;

/* example clean up */
DROP TABLE UserTable;