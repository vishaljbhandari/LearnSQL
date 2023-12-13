/* Data Dictionary Queries */

--Check if a table exists in the current database schema
SELECT table_nameFROM user_tablesWHERE table_name = 'TABLE_NAME';

--Check if a column exists in a table
SELECT column_name AS FOUNDFROM user_tab_colsWHERE table_name = 'TABLE_NAME' AND column_name = 'COLUMN_NAME';

--Showing the table structure
SELECT DBMS_METADATA.get_ddl ('TABLE', 'TABLE_NAME', 'USER_NAME') FROM DUAL;

--Getting current schema
SELECT SYS_CONTEXT ('userenv', 'current_schema') FROM DUAL;
--Changing current schema
ALTER SESSION SET CURRENT_SCHEMA = new_schema;