/*
	It is also possible to declare a cursor within a cursor. 	
*/

set serveroutput on size 30000;

CREATE OR REPLACE PROCEDURE MULTIPLE_CURSORS_PROC 
IS  
   v_owner varchar2(40);  
   v_table_name varchar2(40);  
   v_column_name varchar2(100);  
     
   /* First cursor */  
   CURSOR get_tables IS  
     SELECT DISTINCT tbl.owner, tbl.table_name  
     FROM all_tables tbl  
     WHERE tbl.owner = 'SYSTEM';  
       
   /* Second cursor */  
   CURSOR get_columns IS  
     SELECT DISTINCT col.column_name  
     FROM all_tab_columns col  
     WHERE col.owner = v_owner  
     AND col.table_name = v_table_name;  
       
   BEGIN  
     
   -- Open first cursor  
   OPEN get_tables;  
   LOOP  
      FETCH get_tables INTO v_owner, v_table_name;  
        
      -- Open second cursor  
      OPEN get_columns;  
      LOOP  
         FETCH get_columns INTO v_column_name;  
      END LOOP;  
     CLOSE get_columns;  
    END LOOP;  
   CLOSE get_tables;  
  EXCEPTION  
   WHEN OTHERS THEN  
 raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);  
END multiple_cursors_proc;  
/

DROP PROCEDURE multiple_cursors_proc;