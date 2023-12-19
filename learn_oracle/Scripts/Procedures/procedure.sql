/*
	A procedure is a group of PL/SQL statements that can be called by name.  
	
	Create Procedure
	Syntax

	CREATE [OR REPLACE] PROCEDURE procedure_name  
		[ (parameter [,parameter]) ]  
	IS  
		[declaration_section]  
	BEGIN  
		executable_section  
	[EXCEPTION  
		exception_section]  
	END [procedure_name];  
	/
	
	
	IN: It is a default parameter. It passes the value to the subprogram.
	OUT: It must be specified. It returns a value to the caller.
	IN OUT: It must be specified. It passes an initial value to the subprogram and returns an updated value to the caller.
	
	DROP PROCEDURE procedure_name;  
*/

set serveroutput on size 30000;

/* creating a table for procedure functioning */
CREATE TABLE UserTable
(
	id number(10) PRIMARY KEY,
	name varchar2(100)
); 

CREATE OR REPLACE PROCEDURE "INSERT_USER"    
(
	user_id IN NUMBER,    
	user_name IN VARCHAR2
)    
IS    
BEGIN    
	INSERT INTO UserTable (id, name) VALUES(user_id, user_name);    
END;    
/   

/* Oracle program to call created procedure */
/* call specification / call spec */
BEGIN    
   insert_user(101,'Rahul');  
   dbms_output.put_line('Record Inserted Successfully');    
END;    
/    

SELECT * FROM UserTable;

/* Dropping Procedure */
DROP PROCEDURE insert_user;

/* example clean up */
DROP TABLE UserTable;