/* Database Administration Queries */

--Database version information
SELECT * FROM v$version;

--Database default information
SELECT username, profile, default_tablespace, temporary_tablespace
FROM dba_users;

--Database Character Set information
SELECT * FROM nls_database_parameters;

--Get Oracle version
SELECT VALUE
FROM v$system_parameter
WHERE name = 'compatible';

--Resizing Tablespace without adding datafile
ALTER DATABASE DATAFILE '/work/oradata/STARTST/STAR02D.dbf' resize 2000M;

--Adding datafile to a tablespace
ALTER TABLESPACE data01 ADD DATAFILE '/work/oradata/STARTST/data01.dbf'SIZE 1000M AUTOEXTEND OFF;

--Increasing datafile size
ALTER DATABASE DATAFILE '/u01/app/Test_data_01.dbf' RESIZE 2G;

--Find the Actual size of a Database
SELECT SUM (bytes) / 1024 / 1024 / 1024 AS GB FROM dba_data_files;

--Find the size occupied by Data in a Database or Database usage details
SELECT SUM (bytes) / 1024 / 1024 / 1024 AS GB FROM dba_segments;

--Find the size of the SCHEMA/USER
SELECT SUM (bytes / 1024 / 1024) "size"FROM dba_segmentsWHERE owner = '&owner';

--Last SQL fired by the User on Database
SELECT S.USERNAME || '(' || s.sid || ')-' || s.osuser UNAME,s.program || '-' || s.terminal || '(' || s.machine || ')' PROG,s.sid || '/' || s.serial# sid,s.status "Status",p.spid,sql_text sqltext
FROM v$sqltext_with_newlines t, V$SESSION s, v$process p
WHERE t.address = s.sql_address
AND p.addr = s.paddr(+)AND t.hash_value = s.sql_hash_value
ORDER BY s.sid, t.piece;