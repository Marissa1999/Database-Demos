--Demo3
--Author: Marissa
--Date: September 13, 2018


connect scott/tiger


set linesize 240;
set pagesize 50;


show linesize;
show pagesize;


start "D:\Semester III\Database I\Demos\Demo3\indo_n2.sql"
spool "D:\Semester III\Database I\Demos\Demo3\Demo3_Spool.txt"




--Step 1:

select table_name from user_tables;
select * from user_tables;
describe user_tables;


select table_name, Status, Blocks, Num_Rows from user_tables;
select table_name from user_tables;





--Step 2:

select * from student;
describe student;
column studentid heading  "Student Identifier" format A25;
select studentid, last, first, zip, majorid from student;
select studentid as "Student ID", last as "Last Name", first as "First Name", zip as "Zip", majorid as "Major ID" from student;
describe employee;




--Step 3:

select * from user_constraints;
describe user_constraints;
select owner, constraint_name, constraint_type, table_name from user_constraints;
select table_name, constraint_name, constraint_type from user_constraints;


select table_name, constraint_name, constraint_type 
from user_constraints
where table_name = 'EMPLOYEE';


select table_name, constraint_name, constraint_type 
from user_constraints
where table_name = 'STUDENT';





--Step 4:

select * from employee;
select employeeid, lname, fname, salary from employee;
select employeeid, lname, fname, salary, commission, deptid from employee;


select employeeid, lname, fname, salary, commission, deptid 
from employee
where deptid = 10;


select employeeid, lname, fname, salary, commission, salary+commission, deptid
from employee
where deptid = 10 and commission is not null;




--Step 5:

spool off



