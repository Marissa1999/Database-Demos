--Demo4: Data Manipulation Language (DELETE, DROP TABLE, TRUNCATE, COMMIT, ROLLBACK)
--Author: Marissa Gonçalves
--Date: September 20, 2018


connect scott/tiger
set linesize 200
set pagesize 46
set echo on
alter session set nls_date_format = 'Day DD MM Month, YYYY Year HH:MM:SS';



--Step 1:

select table_name from user_tables;

start "D:\Semester III\Database I\Demos\Demo4\indo_n2.sql"

select table_name from user_tables;




--Step 2:

spool "D:\Semester III\Database I\Demos\Demo4\Demo4_Spool.txt"




--Step 3:

select * 
from student;




--Step 4:

select *
from employee;
 
 
 
 
 
--Step 5:

column lname heading "Last Name" format A20;
column fname heading "First Name" format A20;
column salary heading "Salary Amount" format $999,999.99;

select * from dependent;





--Step 6:

describe employee





--Step 7:

select employeeId, lname as "My Last Name", fname as "My First Name", salary
from employee;





--Step 8:

select * from dependent;





--Step 9:

delete from dependent
where employeeId = 222;

select * from dependent;



delete from employee
where employeeId = 222;

select * from employee;





--Step 10:

rollback;

select * from dependent;

select * from employee;





--Step 11:

commit;

select * from dependent;

select * from employee;




--Step 12:

truncate table dependent;

select * from dependent;

describe dependent




--Step 13:

drop table employee;

drop table employee cascade constraints;

describe employee

rollback;




--Step 14:

spool off






