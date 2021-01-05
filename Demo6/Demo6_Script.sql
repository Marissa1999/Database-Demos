--Demo6_Script
--Author: Marissa Gonçalves
--Date: October 4, 2018



connect scott/tiger
set linesize 200
set pagesize 46
set echo on





--Step 1:

select table_name from user_tables;
start "D:\Marissa\indo_n2.sql"
select table_name from user_tables;






--Step 2:

spool "D:\Semester III\Database I\Demos\Demo6\Demo6_Spool.txt"






--Step 3:

define






--Step 4:

define wname = 'Smith'
define wdeptid = 0
define wsalary = 150000
define







--Step 5:

define wposition =  2
define wposition
define
undefine wposition
define







--Step 6:

select * from employee;

select * 
from employee
where deptid = 10;


select * 
from employee
where deptid = &deptid;









--Step 7:


--Use of Temporary Variables
select * 
from employee
where deptid = &wdept;






--Step 8:

--Use of Temporary Variables
select * 
from employee
where lname = '&wname1';




--Use of Permanent Variables
select * 
from employee
where lname = '&&wname1';




--Use of Temporary Variables
define wname = 'Smith'
select * 
from employee
where lname = '&wname1';








--Step 9:


--Use of Permanent Variables
select * 
from employee
where salary = &&wsalary1;



select * 
from employee
where salary = &&wsalary1;



select * 
from employee
where salary = &&wsalary1;


define






--Step 9:

spool off


