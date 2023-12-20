/*
	Oracle Before INSERT/UPDATE/DELETE Trigger
	This statement specifies that Oracle will fire this trigger 
		BEFORE the INSERT/UPDATE or DELETE operation is executed
	
	Firing Point: BEFORE
		BEFORE INSERT TRIGGER
		BEFORE UPDATE TRIGGER
		BEFORE DELETE TRIGGER
		
	CREATE [ OR REPLACE ] TRIGGER trigger_name  
	BEFORE INSERT or UPDATE or DELETE  
	 ON table_name  
	  [ FOR EACH ROW ]  
	DECLARE  
	   -- variable declarations  
	BEGIN  
	   -- trigger code  
	EXCEPTION  
	   WHEN ...  
	   -- exception handling  
	END;  
	
	
	OR REPLACE: It is an optional parameter. It is used to re-create the trigger if it already exists. It facilitates you to change the trigger definition without using a DROP TRIGGER statement.

	trigger_name: It specifies the name of the trigger that you want to create.

	BEFORE INSERT or UPDATE or DELETE: It specifies that the trigger will be fired before the INSERT or UPDATE or DELETE operation is executed.

	table_name: It specifies the name of the table on which trigger operation is being performed.
	
	Limitations
		BEFORE trigger cannot be created on a view.
		You cannot update the OLD values.
		You can only update the NEW values.
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

/* Creating a before trigger for UserTable */
CREATE OR REPLACE TRIGGER  BeforeUserTable   
BEFORE  
INSERT OR UPDATE OR DELETE ON UserTable  
FOR EACH ROW  
BEGIN  	 
	dbms_output.put_line('Tigger Before Operation');   
END;  
/  

/* Enabling trigger */
ALTER TRIGGER  BeforeUserTable ENABLE  
/ 

/* triggering trigger using insert query */
INSERT INTO UserTable VALUES (6, 'Gery', 36000);

DROP TRIGGER BeforeUserTable;

/* example clean up */
DROP TABLE UserTable;