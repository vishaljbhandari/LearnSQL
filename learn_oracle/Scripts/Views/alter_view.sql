/*
	CREATE OR REPLACE VIEW  
	-> used to modify the definition of an Oracle VIEW without dropping it.

	CREATE OR REPLACE view_name AS  
	SELECT columns  
	FROM tables  
	WHERE conditions; 
	
	view_name: It specifies the name of the Oracle VIEW that you want to create.
*/

CREATE TABLE PizzaCompany
(
	CompanyId int PRIMARY KEY,
	CompanyName varchar(50),
	CompanyCity varchar(30),
    PizzaSold int
);

INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (1,'Dominos','Los Angeles', 20);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (2,'Pizza Hut','San Francisco', 40);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (3,'Papa johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (4,'Ah Pizz','Fremont', 47);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (5,'Nino Pizza','Las Vegas', 75);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (6,'Pizzeria','Boston', 32);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (7,'chuck e cheese','Chicago', 54);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (8,'New johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (9,'Papa johns','San Diego', 36);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (10,'Ah Pizz','Fremont', 47);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (11,'Nino Pizza','Las Vegas', 75);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (12,'Pizzeria','Fremont', 32);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (13,'chuck e cheese','Boston', 54);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (14,'New johns','San Diego', 36);
COMMIT;

SELECT * FROM PizzaCompany;

/* View is created from the result of a select query */
CREATE VIEW boston_pizza AS  
SELECT *  
FROM PizzaCompany  
WHERE CompanyCity = 'Boston' AND ( CompanyName = 'Pizzeria' OR CompanyName = 'Papa johns') ; 

/* Querying from view */
SELECT * FROM boston_pizza;

SELECT * FROM boston_pizza WHERE PizzaSold > 20;

/* View is updated/replaced from the result of a select query */
CREATE OR REPLACE VIEW boston_pizza AS  
SELECT *  
FROM PizzaCompany  
WHERE CompanyCity = 'Boston' AND ( CompanyName = 'Pizzeria' OR CompanyName = 'Papa johns' OR CompanyName = 'Ah Pizz' OR CompanyName = 'Nino Pizza' OR CompanyName = 'New johns') ; 

/* Querying from view */
SELECT * FROM boston_pizza;

SELECT * FROM boston_pizza WHERE PizzaSold > 20;

INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (17,'New johns','Boston', 32);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (18,'Papa johns','Boston', 17);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (19,'New johns','Boston', 10);
INSERT INTO PizzaCompany (CompanyId, CompanyName, CompanyCity, PizzaSold) VALUES (20,'Nino Pizza','Boston', 23);

/* Querying from view */
SELECT * FROM boston_pizza;

SELECT * FROM boston_pizza WHERE PizzaSold > 20;

DROP VIEW boston_pizza;

/* example clean up */
DROP TABLE PizzaCompany;