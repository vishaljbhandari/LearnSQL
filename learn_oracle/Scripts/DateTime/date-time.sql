/*
	Date     



*/

/*
	Some Keywords
	
	SYSDATE	Returns the current date and time. Example: SELECT SYSDATE FROM DUAL;
	
	EXTRACT	Extracts a specific field (year, month, day, hour, minute, second) from a date or timestamp. Example: SELECT EXTRACT(YEAR FROM SYSDATE) FROM DUAL;
	
	ADD_MONTHS(date, n)	Adds a specified number of months to a date. Example: SELECT ADD_MONTHS(SYSDATE, 3) FROM DUAL;
	
	LAST_DAY(date)	Returns the last day of the month for a given date. Example: SELECT LAST_DAY(SYSDATE) FROM DUAL;
	
	MONTHS_BETWEEN(date1, date2)	Returns the number of months between two dates. Example: SELECT MONTHS_BETWEEN(SYSDATE, ’01-JAN-2019′) FROM DUAL;
	
	NEXT_DAY(date, day_of_week)	Returns the date of the first weekday that is later than the given date. Example: SELECT NEXT_DAY(SYSDATE, ‘MONDAY’) FROM DUAL;	

	CURRENT_TIMESTAMP returns the current date and time in the session time zone
	
*/