/* Date / Time related queries */


-- Get the first day of the month
SELECT TRUNC (SYSDATE, 'MONTH') "First day of current month" FROM DUAL;

-- Get the last day of the month
SELECT TRUNC (LAST_DAY (SYSDATE)) "Last day of current month" FROM DUAL;

-- Get the first day of the Year
SELECT TRUNC (SYSDATE, 'YEAR') "Year First Day" FROM DUAL;

-- Get the last day of the year
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'YEAR'), 12) - 1 "Year Last Day" FROM DUAL

-- Get number of days in current month
SELECT CAST (TO_CHAR (LAST_DAY (SYSDATE), 'dd') AS INT) number_of_days FROM DUAL;

-- Get number of days left in current month
SELECT SYSDATE,LAST_DAY (SYSDATE) "Last",LAST_DAY (SYSDATE) - SYSDATE "Days left"FROM DUAL;

-- Get number of days between two dates
SELECT ROUND ( (MONTHS_BETWEEN ('01-Feb-2014', '01-Mar-2012') * 30), 0)num_of_daysFROM DUAL;</p>
<p>OR</p>
<p>SELECT TRUNC(sysdate) - TRUNC(e.hire_date) FROM employees;

-- Display each months start and end date upto last month of the year
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'MONTH'), i) start_date,TRUNC (LAST_DAY (ADD_MONTHS (SYSDATE, i))) end_dateFROM XMLTABLE ('for $i in 0 to xs:int(D) return $i'PASSING XMLELEMENT (d,FLOOR (MONTHS_BETWEEN (ADD_MONTHS (TRUNC (SYSDATE, 'YEAR') - 1, 12),SYSDATE)))COLUMNS i INTEGER PATH '.');

-- Get number of seconds passed since today (since 00:00 hr)
SELECT (SYSDATE - TRUNC (SYSDATE)) * 24 * 60 * 60 num_of_sec_since_morning
FROM DUAL;

-- Get number of seconds left today (till 23:59:59 hr)
SELECT (TRUNC (SYSDATE+1) - SYSDATE) * 24 * 60 * 60 num_of_sec_left
FROM DUAL;