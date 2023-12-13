/*

Set
-> Query Operation
-> Used to join the results of two (or more) SELECT statements.


Points to remember -
Same number of columns must be selected by all participating SELECT statements.Column names used in the display are taken from the first query.

Data types of the column list must be compatible/implicitly convertible by oracle. Oracle will not perform implicit type conversion if corresponding columns in the component queries belong to different data type groups.For example, if a column in the first component query is of data type DATE, and the corresponding column in the second component query is of data type CHAR,Oracle will not perform implicit conversion, but raise ORA-01790 error.

Positional ordering must be used to sort the result set. Individual result set ordering is not allowed with Set operators. ORDER BY can appear once at the end of the query. For example,

UNION and INTERSECT operators are commutative, i.e. the order of queries is not important; it doesn't change the final result.

Performance wise, UNION ALL shows better performance as compared to UNION because resources are not wasted in filtering duplicates and sorting the result set.

Set operators can be the part of sub queries.

Set operators can't be used in SELECT statements containing TABLE collection expressions.

The LONG, BLOB, CLOB, BFILE, VARRAY,or nested table are not permitted for use in Set operators.For update clause is not allowed with the set operators.      

*/