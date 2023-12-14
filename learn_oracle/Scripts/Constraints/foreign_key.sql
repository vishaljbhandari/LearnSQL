/*
	FOREIGN KEY
	used to prevent actions that would destroy links between tables.
	used to created related tabales
	
	A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
	The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

	The naming conventions for a foreign key constraint should have an "FK_" prefix, followed by the target table name, followed by the source table name. The syntax should be "FK_<TargetTable>_<SourceTable>". (Upper case)
*/
/* 
	FOREIGN KEY on CREATE TABLE
	
	CREATE TABLE child_tablename
	(
		column_name1 type1, 
		column_name2 type2, 
		column_name3 type3,

		CONSTRAINT <constraint_name> FOREIGN KEY (<column_name>) REFERENCES <parent_table>(<parent_table_column_name>)
	); 
	
	FOREIGN KEY on ALTER TABLE
	
	ALTER TABLE <child_tablename> ADD CONSTRAINT <constraint_name> FOREIGN KEY (<column_name>) REFERENCES <parent_table>(<parent_table_column_name>)
	
	DROP a FOREIGN KEY Constraint
	ALTER TABLE <child_tablename> DROP CONSTRAINT <constraint_name>;
*/

-- Parent Table [PK - PizzaCompany.CompanyId]
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

-- Child Table [PK - Foods.CompanyID]
CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int,
	FOREIGN KEY(CompanyID) REFERENCES PizzaCompany(CompanyID)
);

DROP TABLE Foods;

-- Child Table [PK - Foods.CompanyID]
CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int
);

-- Adding FK using alter table
ALTER TABLE Foods ADD CONSTRAINT fk_food_company_id FOREIGN KEY (CompanyID) REFERENCES PizzaCompany(CompanyID);

INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (1,'Large Pizza',5,2);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (2,'Garlic Knots',6,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (3,'Large Pizza',3,3);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (4,'Medium Pizza',8,4);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (5,'Breadsticks',7,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (6,'Medium Pizza',11,1);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (7,'Small Pizza',9,6);
INSERT INTO Foods (ItemId, ItemName, UnitsSold, CompanyId) VALUES (8,'Small Pizza',6,7);


SELECT * FROM Foods;

SELECT 
	pz.CompanyCity, 
	pz.CompanyName, 
	pz.CompanyId AS PizzaCompanyId, 
	fd.CompanyID AS FoodsCompanyId, 
	fd.ItemName, 
	fd.UnitsSold
FROM PizzaCompany pz
LEFT OUTER JOIN Foods fd 
ON pz.CompanyId = fd.CompanyId;

-- Dropping FK using alter table
ALTER TABLE Foods DROP CONSTRAINT fk_food_company_id;

/* example clean up */
DROP TABLE Foods;
DROP TABLE PizzaCompany;