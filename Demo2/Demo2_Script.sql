-- Demo2_Script.sql
-- Marissa Gonçalves
-- Thursday, August 30, 2018

--Step 1:
spool "D:\Database I\Demo2\Demo2_Spool.txt"


--Step 2:
select sysdate from dual;
select table_name from user_tables;


--Step 3:
select * from locations;


-- Step 4:
describe locations


--Step 5:
select * 
from locations
where country_Id = 'UK';


--Step 6:
select * 
from locations
where country_Id = 'US';


--Step 7
select sysdate from dual;
show all
clear screen


--Step 8
select table_name from user_tables;


--Step 9
spool off;








