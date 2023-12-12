-- Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.


-- Single Line Comments
-- start with --.
-- Any text between -- and the end of the line will be ignored (will not be executed).

-- Multi-line Comments
-- start with /* and end with */.
-- Any text between /* and */ will be ignored.


SELECT * FROM Customers -- WHERE City='Berlin';

/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT * FROM Suppliers;

SELECT CustomerName, /*City,*/ Country FROM Customers;

SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;