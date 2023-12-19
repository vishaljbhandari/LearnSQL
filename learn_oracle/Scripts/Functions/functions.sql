/*
	A function is a subprogram that is used to return a single value
	You must declare and define a function before invoking it. 
	It can be declared and defined at a same time or can be declared first and defined later in the same block.
	
	Create function 
	Syntax

	CREATE [OR REPLACE] FUNCTION function_name  
	   [ (parameter [,parameter]) ]  
	RETURN return_datatype  
	IS | AS  
	 [declaration_section]  
	BEGIN  
	   executable_section  
	[EXCEPTION  
	   exception_section]  
	END [function_name];   
	/
	
	
	IN: It is a default parameter. It passes the value to the subprogram.
	OUT: It must be specified. It returns a value to the caller.
	IN OUT: It must be specified. It passes an initial value to the subprogram and returns an updated value to the caller.
	
	DROP FUNCTION function_name;  
*/

set serveroutput on size 30000;

CREATE OR REPLACE FUNCTION AddTwoNumbers(firstNumber IN number, secondNumber IN number)    
	RETURN number    
IS     
	resultNumber number(8);    
BEGIN    
	resultNumber :=firstNumber+secondNumber;    
	RETURN resultNumber;    
END;    
/   

/* Oracle program to call created function */
/* call specification / call spec */
DECLARE    
   resultNumber number(2);    
BEGIN    
   resultNumber := AddTwoNumbers(11, 22);    
   dbms_output.put_line('Addition is: ' || resultNumber);    
END;    
/    

DROP FUNCTION AddTwoNumbers;   

/* Another example to demonstrate Declaring, Defining and Invoking a simple PL/SQL function */
DECLARE  
   firstNumber number;  
   secondNumber number;  
   resultNumber number;  
FUNCTION findMaxOfTwoNumbers(firstNumber IN number, secondNumber IN number)   
RETURN number  
IS  
    AddedNumber number;  
BEGIN  
   IF firstNumber > secondNumber THEN  
      AddedNumber:= firstNumber;  
   ELSE  
      AddedNumber:= secondNumber;  
   END IF;  
  
   RETURN AddedNumber;  
END;   

BEGIN  
   firstNumber:= 23;  
   secondNumber:= 45;  
  
   resultNumber := findMaxOfTwoNumbers(firstNumber, secondNumber);  
   dbms_output.put_line(' Maximum of (23,45): ' || resultNumber);  
END;  
/  

/* creating a table for function functioning */
CREATE TABLE UserTable
(
	id number(10) PRIMARY KEY,
	name varchar2(100) NOT NULL,
	salary number NOT NULL
); 

INSERT INTO UserTable VALUES (1, 'ADAM', 25000);
INSERT INTO UserTable VALUES (2, 'PARAM', 75000);
INSERT INTO UserTable VALUES (3, 'RAJ', 35000);
INSERT INTO UserTable VALUES (4, 'TOM', 20000);
INSERT INTO UserTable VALUES (5, 'NOM', 36000);

SELECT * FROM UserTable;

/* Oracle function example using table */
CREATE OR REPLACE FUNCTION GetTotalSalary  
RETURN number 
IS  
   totalSalary number(6) := 0;  
BEGIN  
   SELECT sum(salary) 
   into totalSalary  
   FROM UserTable;  
   
   RETURN totalSalary;  
END;  
/  

DECLARE  
   totalSalary number(6);  
BEGIN  
   totalSalary := GetTotalSalary();  
   dbms_output.put_line('Total Salary Of Users is : ' || totalSalary);  
END;  
/  

DROP FUNCTION GetTotalSalary;  

DECLARE  
   num number;  
   factorialResult number;   
FUNCTION GetFactorial(inputNumber number)  
RETURN number   
IS  
   factorial number;  
BEGIN  
   IF inputNumber = 0 THEN  
      factorial := 1;  
   ELSE  
      factorial := inputNumber * GetFactorial(inputNumber-1);  
   END IF;  
RETURN factorial;  
END;  
  
BEGIN  
   num:= 6;  
   factorialResult := GetFactorial(num);  
   dbms_output.put_line(' Factorial '|| num || ' is ' || factorialResult);  
END;  
/  

/* example clean up */
DROP TABLE UserTable;