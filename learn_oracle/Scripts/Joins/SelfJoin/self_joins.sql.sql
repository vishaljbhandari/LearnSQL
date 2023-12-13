/*
	Self Join
	-> Specidifc Join with Itself
	-> a table is joined with itself (Unary relationship).
	-> A self join simply specifies that each rows of a table is combined with itself and every other row of the table.

	SELECT a.column_name, b.column_name...   
	FROM table1 a, table1 b   
	WHERE a.common_filed = b.common_field;    

*/

CREATE TABLE Foods
(
	ItemId int PRIMARY KEY, 
	ItemName  varchar(50), 
	UnitsSold int,
	CompanyID int
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

-- List all items which were sold less than "Garliac Knots' sell
SELECT 
	fd2.CompanyID, 
	fd2.ItemName, 
	fd2.UnitsSold
FROM Foods fd1, Foods fd2
WHERE fd2.UnitsSold < fd1.UnitsSold
    AND fd1.itemid = 2;
    
/* example clean up */
DROP TABLE Foods;