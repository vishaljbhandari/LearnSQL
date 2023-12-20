/*
	
	Oracle ENABLE Trigger
		The ALTER TRIGGER statement is used to enable a trigger.

	Syntax
	ALTER TRIGGER trigger_name ENABLE;   
	
	Oracle ENABLE ALL Triggers Example
	Syntax
	ALTER TABLE table_name ENABLE ALL TRIGGERS;  

	Oracle ENABLE ALL Triggers
	If there is more than one trigger in a table and you want to enable all the triggers from the database then you can do it by ALTER TABLE statement.

	----------------------------
	
	Oracle DISABLE Trigger
		The ALTER TRIGGER statement is used to disable a trigger.

	Syntax
	ALTER TRIGGER trigger_name DISABLE;   

	Oracle DISABLE ALL Triggers
	If there is more than one trigger in a table and you want to disable all the triggers from the database then you can do it by ALTER TABLE statement.

	Syntax
	ALTER TABLE table_name DISABLE ALL TRIGGERS;  
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

/* Creating a AFTER trigger for UserTable */
CREATE OR REPLACE TRIGGER  AfterUserTable   
AFTER  
INSERT OR UPDATE OR DELETE ON UserTable  
FOR EACH ROW  
BEGIN  	 
	dbms_output.put_line('Tigger After Operation');   
END;  
/  

/* Enabling trigger */
ALTER TRIGGER  AfterUserTable ENABLE  
/ 

/* triggering trigger using insert query */
INSERT INTO UserTable VALUES (9, 'Gerg', 36000);

/* Enabling trigger */
ALTER TRIGGER  AfterUserTable DISABLE  
/ 

/* triggering trigger using insert query */
INSERT INTO UserTable VALUES (10, 'Sam', 36000);

DROP TRIGGER AfterUserTable;

/* example clean up */
DROP TABLE UserTable;