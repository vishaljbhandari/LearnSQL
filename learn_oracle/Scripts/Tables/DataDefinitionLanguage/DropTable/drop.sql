-- Oracle DROP TABLE statement is used to remove or delete a table from the Oracle database.

/*

syntax -
DROP [schema_name].TABLE table_name  
[ CASCADE CONSTRAINTS ]  
[ PURGE ];  

schema_name: It specifies the name of the schema that owns the table.

table_name: It specifies the name of the table which you want to remove from the Oracle database.

CASCADE CONSTRAINTS: It is optional. If specified, it will drop all referential integrity constraints as well.

PURGE: It is also optional. If specified, the table and its dependent objects are placed in the recycle bin and can?t be recovered.

If there are referential integrity constraints on table_name and you do not specify the CASCADE CONSTRAINTS option, the DROP TABLE statement will return an error and Oracle will not drop the table.
*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

DROP TABLE PizzaCompany;

/* If tables are having relationship, then DROP tables should be in same sequence in which those tables are created */

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30)  
);

INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (1,'Dominos','Los Angeles');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (2,'Pizza Hut','San Francisco');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (3,'Papa johns','San Diego');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (4,'Ah Pizz','Fremont');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (5,'Nino Pizza','Las Vegas');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (6,'Pizzeria','Boston');
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity) VALUES (7,'chuck e cheese','Chicago');
 
SELECT * FROM PizzaCompany;


CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int,
	FOREIGN KEY(CompanyID) REFERENCES PizzaCompany(CompanyID)
	/* the table with the foreign key is called the child table */
);

INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (1,'Large Pizza',5,2);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (2,'Garlic Knots',6,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (3,'Large Pizza',3,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (4,'Medium Pizza',8,4);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (5,'Breadsticks',7,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (6,'Medium Pizza',11,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (7,'Small Pizza',9,6);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (8,'Small Pizza',6,7);
 
SELECT * FROM Foods;

/* Foods table is child table of PizzaCompany table */
/* 
    PizzaCompany can not be deleted first 
    DROP TABLE PizzaCompany;
    Error - unique/primary keys in table referenced by foreign keys
*/
/* Food table to be deleted first */
DROP TABLE Foods;
-- DROP TABLE Foods CASCADE CONSTRAINTS;
DROP TABLE PizzaCompany;
