-- Does exactly what its name implies. Tells you what each session
-- owned by a process is doing. You need to type in a few characters
-- distinct to the process' name. eg. for RangerCE's sessions in the 
-- DB, you will need to type in 'ce', for RangerCSE, you would say 'cse'
-- If you are in doubt what your processes are called in the system, 
-- then execute the following query to find out.
-- "select distinct program from v$session where process = <OS_PID>"

 column sid			format 999999           heading 'SID'
 column sh			format 999999			heading 'Serial#'
 column pid			format a10              heading 'PID'
 column ia			format a1				heading 'Active'
 column iw			format a1				heading 'Waiting'
 column secs			format 999999999		heading 'Seconds|In Event'
 column event		        format a20				heading 'Event'
 column sql			format a45				heading 'SQL'
 column Name			format a10				heading 'NAME'
 column Mode			format 999999				heading 'Mode'
 
 set linesize 132 long 900000
 set pagesize 500
 
 select  s.sid sid,
 		s.serial# sh,
 		s.process pid, 
 		decode (s.status, 'INACTIVE', 'N', 'Y') ia,
 		decode (sw.wait_time, 0, 'Y', 'N') iw,
 		decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
         sw.event event,
 		decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql ,sq.sql_id
 from    v$session_wait sw,
         v$session s,
 		v$sql sq
 where   s.sid = sw.sid and
 		s.sql_hash_value = sq.hash_value(+) and
		sq.sql_text is not null and sw.event not like '%SQL%' and
 		s.program like '%&program%' ;
 

=================== Modified ==================

 column sid			format 999999           heading 'SID'
 column sh			format 999999			heading 'Serial#'
 column pid			format a10              heading 'PID'
 column ia			format a1				heading 'Active'
 column iw			format a1				heading 'Waiting'
 column secs			format 999999999		heading 'Seconds|In Event'
 column event		        format a20				heading 'Event'
 column sql			format a45				heading 'SQL'
 column Name			format a10				heading 'NAME'
 column Mode			format 999999				heading 'Mode'
 
 set linesize 132
 set pagesize 500
 
 select  s.sid sid,
 		s.serial# sh,
 		s.process pid, 
 		decode (s.status, 'INACTIVE', 'N', 'Y') ia,
 		decode (sw.wait_time, 0, 'Y', 'N') iw,
 		decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
         sw.event event,
 		decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql,
		sq.sql_id SQL_ID
 from    v$session_wait sw,
         v$session s,
 		v$sql sq
 where   s.sid = sw.sid and
 		s.sql_hash_value = sq.hash_value(+) and
		sq.sql_text is not null and sw.event not like '%SQL%' and
 		s.program like '%&program%' ;






 column sid			format 999999           heading 'SID'
 column sh			format 999999			heading 'Serial#'
 column pid			format a10              heading 'PID'
 column ia			format a1				heading 'Active'
 column iw			format a1				heading 'Waiting'
 column secs			format 999999999		heading 'Seconds|In Event'
 column event		        format a20				heading 'Event'
 column sql			format a45				heading 'SQL'
 column Name			format a10				heading 'NAME'
 column Mode			format 999999				heading 'Mode'
 
 set linesize 132
 set pagesize 500
 
 select  s.sid sid,
 		s.serial# sh,
 		s.process pid, 
 		decode (s.status, 'INACTIVE', 'N', 'Y') ia,
 		decode (sw.wait_time, 0, 'Y', 'N') iw,
 		decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
         sw.event event,
 		decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql
 from    v$session_wait sw,
         v$session s,
 		v$sql sq
 where   s.sid = sw.sid and
 		s.sql_hash_value = sq.hash_value(+) and
		sq.sql_text is not null and
		s.process = '32009';





 column sid			format 999999           heading 'SID'
 column sh			format 999999			heading 'Serial#'
 column pid			format a10              heading 'PID'
 column ia			format a1				heading 'Active'
 column iw			format a1				heading 'Waiting'
 column secs			format 999999999		heading 'Seconds|In Event'
 column event		        format a20				heading 'Event'
 column sql			format a45				heading 'SQL'
 column Name			format a10				heading 'NAME'
 column Mode			format 999999				heading 'Mode'
 
 set linesize 132
 set pagesize 500
 
 select  s.sid sid,
 		s.serial# sh,
 		s.process pid, 
 		decode (s.status, 'INACTIVE', 'N', 'Y') ia,
 		decode (sw.wait_time, 0, 'Y', 'N') iw,
 		decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
         sw.event event,
 		decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql
 from    v$session_wait sw,
         v$session s,
 		v$sql sq
 where   s.sid = sw.sid and
 		s.sql_hash_value = sq.hash_value(+) and
		sq.sql_text is not null and
		s.process=19717;




column sid                     format 999999           heading 'SID'
 column sh                      format 999999                   heading 'Serial#'
 column pid                     format a10              heading 'PID'
 column ia                      format a1                               heading 'Active'
 column iw                      format a1                               heading 'Waiting'
 column secs                    format 999999999                heading 'Seconds|In Event'
 column event                   format a20                              heading 'Event'
 column sql                     format a45                              heading 'SQL'
 column Name                    format a10                              heading 'NAME'
 column Mode                    format 999999                           heading 'Mode'

 set linesize 132
 set pagesize 500

 select  s.sid sid,
                s.serial# sh,
                s.process pid,
                decode (s.status, 'INACTIVE', 'N', 'Y') ia,
                decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql
 from   v$session s,
                v$sql sq
 where   s.sql_hash_value = sq.hash_value(+) and
                sq.sql_text is not null and s.sid= &1;







 column sid			format 999999           heading 'SID'
 column sh			format 999999			heading 'Serial#'
 column pid			format a10              heading 'PID'
 column ia			format a1				heading 'Active'
 column iw			format a1				heading 'Waiting'
 column secs			format 999999999		heading 'Seconds|In Event'
 column event		        format a20				heading 'Event'
 column sql			format a45				heading 'SQL'
 column Name			format a10				heading 'NAME'
 column Mode			format 999999				heading 'Mode'
 
 set linesize 132
 set pagesize 500
 
 select  s.sid sid,
 		s.serial# sh,
 		s.process pid, 
 		decode (s.status, 'INACTIVE', 'N', 'Y') ia,
 		decode (sw.wait_time, 0, 'Y', 'N') iw,
 		decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
         sw.event event,
 		decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql
 from    v$session_wait sw,
         v$session s,
 		v$sql sq
 where   s.sid = sw.sid and
 		s.sql_hash_value = sq.hash_value(+) and
		sq.sql_text is not null and sw.event not like '%SQL%' and
 		s.program like '%sql%' ;





column sid          format 999999       heading 'SID'
column sh           format 999999       heading 'Serial#'
column pid          format a10          heading 'PID'
column ia           format a1           heading 'Active'
column iw           format a1           heading 'Waiting'
column secs         format 999999999    heading 'Seconds|In Event'
column event        format a25          heading 'Event'
column sql          format a45          heading 'SQL'
column sqlid        format a15          heading 'SQL ID'
column programname  format a25          heading 'Program|Name'
set linesize 200
set pagesize 50

select  s.sid sid,
    s.serial# sh,
    s.process pid,
    decode (s.status, 'INACTIVE', 'N', 'Y') ia,
    decode (sw.wait_time, 0, 'Y', 'N') iw,
    decode (sw.wait_time, 0, sw.seconds_in_wait, sw.seconds_in_wait-sw.wait_time/100) secs,
    sw.event event,
    decode (sq.sql_text, null, ' - Not Available -', sq.sql_text) sql,
    s.sql_id sqlid,
    s.program programname
from v$session_wait sw,
    v$session s,
    v$sql sq
where  s.sid = sw.sid
    and s.sql_hash_value = sq.hash_value(+)
    and s.program like '%&program%' ;

