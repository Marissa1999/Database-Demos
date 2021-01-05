--Demo5: Grouping & SQL Functions
--Author: Marissa Gonçalves
--Date: September 27, 2018



connect scott/tiger
set linesize 200
set pagesize 46
set echo on




--Step 1:

select table_name from user_tables;
start "D:\Marissa\indo_n2.sql"
select table_name from user_tables;





--Step 2:

spool "D:\Semester III\Database I\Demos\Demo5\Demo5_Spool.txt"





--Step 3:

select *
from employee;






--Step 4:

select deptid, count(employeeid)
from employee
group by deptid;







---Step 5:

select deptid, count(employeeid)
from employee
group by deptid
order by count(employeeid) asc;



select deptid, count(employeeid)
from employee
group by deptid
order by count(employeeid) desc;






--Step 6:

select deptid, count(employeeid), sum(salary)
from employee
group by deptid;


select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary"
from employee
group by deptid;






--Step 7:

select count(employeeid) as "Number of Employees", sum(salary) as "Total Salary"
from employee
group by deptid;





--Step 8:

select count(employeeid) as "Number of Employees", sum(salary) as "Total Salary"
from employee;





--Step 9:

select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary",  sum(commission) as "Total Commission" 
from employee
group by deptid;

select *
from employee;





--Step 10:

select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary",  sum(commission) 
from employee
where commission is not null
group by deptid;





--Step 11:

select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary",  sum(commission) 
from employee
where commission is not null
group by deptid
having count(employeeid) >= 2;


select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary",  sum(commission) 
from employee
where commission is not null
group by deptid
having count(employeeid) = 1;





--Step 12:

select deptid, count(employeeid) as "Number of Employees", sum(salary) as "Total Salary",  sum(commission) as "Total Commission"
from employee
where commission is not null
group by deptid
having count(employeeid) = 1
order by sum(salary);




--Step 13:

spool off;