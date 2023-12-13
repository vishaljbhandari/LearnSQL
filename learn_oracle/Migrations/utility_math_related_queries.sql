/* Utility / Math Related Queries */

-- Convert number to words
SELECT TO_CHAR ( TO_DATE (1526, 'j') , 'jsp' ) FROM DUAL;

--Convert Comma Separated Values into Table
WITH csv AS 
(SELECT 'AA,BB,CC,DD,EE,FF'AS csvdata FROM DUAL)
SELECT REGEXP_SUBSTR (csv.csvdata, '[^,]+', 1, LEVEL) pivot_char FROM DUAL, csv CONNECT BY REGEXP_SUBSTR (csv.csvdata,'[^,]+', 1, LEVEL) IS NOT NULL;

--Find the last record from a table
SELECT *FROM employeesWHERE ROWID IN (SELECT MAX (ROWID) FROM employees);</p>
<p>(OR)</p>
<p>SELECT * FROM employeesMINUSSELECT *FROM employeesWHERE ROWNUM < (SELECT COUNT (*) FROM employees);

--Row Data Multiplication in Oracle
WITH tblAS (
	SELECT -2 num 
	FROM DUAL
UNION
	SELECT -3 num 
	FROM DUAL
UNION
	SELECT -4 num 
	FROM DUAL
),sign_valAS (
SELECT 
CASE MOD (COUNT (*), 2) WHEN 0 THEN 1 ELSE -1 END valFROM tblWHERE num < 0
)SELECT EXP (SUM (LN (ABS (num)))) * val 
FROM tbl, sign_val 
GROUP BY val;


--Generating Random Data In Oracle
SELECT LEVEL empl_id,MOD (ROWNUM, 50000) dept_id,TRUNC (DBMS_RANDOM.VALUE (1000, 500000), 2) salary,DECODE (ROUND (DBMS_RANDOM.VALUE (1, 2)), 1, 'M', 2, 'F') gender,TO_DATE (ROUND (DBMS_RANDOM.VALUE (1, 28))|| '-'|| ROUND (DBMS_RANDOM.VALUE (1, 12))|| '-'|| ROUND (DBMS_RANDOM.VALUE (1900, 2010)),'DD-MM-YYYY')dob,DBMS_RANDOM.STRING ('x', DBMS_RANDOM.VALUE (20, 50)) address FROM DUAL CONNECT BY LEVEL < 10000;

--Random number generator in Oracle
generate random number between 0 and 100 SELECT ROUND (DBMS_RANDOM.VALUE () * 100) + 1 AS random_num FROM DUAL;

--Check if table contains any data
SELECT 1 FROM TABLE_NAME WHERE ROWNUM = 1;