/*
	Outer Join
	-> An outer join is similar to equijoin but it gets also the non-matched rows from the table

	Three Types
	> Left Outer Join 
		-> Only Left rows + Common Matched Data
		-> Common Matched Data + Non-matched rows from Left table 			
	> Right Outer Join
		-> Only Right rows + Common Matched Data
		-> Common Matched Data + Non-matched rows from Right table 
	> Full Outer Join
		-> Only Left rows + Common Matched Data + Only Right rows
		-> Common Matched Data + Non-matched rows from Left table + Non-matched rows from Right table

	SELECT columns  
	FROM table1  
	LEFT [OUTER] JOIN table2  
	ON table1.column = table2.column;      

	SELECT columns  
	FROM table1  
	RIGTH [OUTER] JOIN table2  
	ON table1.column = table2.column; 
	
		SELECT columns  
	FROM table1  
	FULL [OUTER] JOIN table2  
	ON table1.column = table2.column; 
*/