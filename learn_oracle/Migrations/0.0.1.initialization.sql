/* v0.0.1 Initialization Of Schema */
/* Creating User Schema */

CREATE USER c##learn_oracle IDENTIFIED BY password;
-- DROP USER c##learn_oracle

/* Granting Required Privileges  */
GRANT CONNECT, RESOURCE TO c##learn_oracle;
GRANT CREATE VIEW TO c##learn_oracle;
ALTER USER c##learn_oracle quota 100M on USERS;

-- CONNECT c##learn_oracle/password
-- SHOW USER; 

-- SELECT tname FROM tab;