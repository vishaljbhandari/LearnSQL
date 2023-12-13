/* 
	Create Constraints
	Constraints can be specified (two ways)
		when the table is created with the CREATE TABLE statement
		after the table is created with the ALTER TABLE statement
	
	CREATE TABLE table_name (
		column1 datatype constraint,
		column2 datatype constraint,
		column3 datatype constraint,
		....
	);
	
	ALTER TABLE table_name ADD CONSTRAINT constraint <CONSTRAINT_NAME> (column1, column2);
*/