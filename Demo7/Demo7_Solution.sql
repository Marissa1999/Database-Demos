--Demo7_Script
--Author: Marissa Gonçalves
--Date: November 12, 2018


CONNECT scott/tiger
SET LINESIZE 200
SET PAGESIZE 50
SET ECHO ON



SELECT TABLE_NAME FROM USER_TABLES;
START "D:\Marissa\indo_n2.sql"
SELECT TABLE_NAME FROM USER_TABLES;



SPOOL "D:\Semester III\Database I\Demos\Demo7\Demo7_Spool.txt"



------------ Step 1

--Qa
SELECT Lname, Fname, Salary, DeptId
FROM   employee
WHERE  DeptId = 10;

--Qb
SELECT DeptId
FROM   dept
WHERE  UPPER(DeptName)='FINANCE';


SELECT * FROM EMPLOYEE;

SELECT * FROM DEPT;




--Q1
SELECT Lname, Fname, Salary, DeptId
FROM   employee
WHERE  DeptId = (
                    SELECT DeptId
                    FROM   dept
                    WHERE  UPPER(DeptName)='FINANCE'
                );





------------ Step 2

--Qc
SELECT Salary
FROM   employee
WHERE  UPPER(Lname)='DEV';


--Q2
SELECT Lname, Fname, Salary, DeptId
FROM   employee
WHERE  Salary >
              (
                 SELECT Salary
                 FROM   employee
                 WHERE  UPPER(Lname)='DEV'
              );
		

		
		
			 
SELECT Lname, Fname, Salary, DeptId
FROM   employee
WHERE  Salary =
              (
                 SELECT Salary
                 FROM   employee
                 WHERE  UPPER(Lname)='DEV'
              );

			  
			  
			  
			  
SELECT Lname, Fname, Salary, DeptId
FROM   employee
WHERE  Salary >=
              (
                 SELECT Salary
                 FROM   employee
                 WHERE  UPPER(Lname)='DEV'
              );			  

			  
			  
			  
			  
			  

-- S U B - Q U E R I E S with CREATE Statement
------------ Step 3

--Qd
SELECT EmployeeId, Lname, Fname, Salary
FROM   employee
WHERE  DeptId=20;

--Q3
CREATE TABLE temp
AS
SELECT EmployeeId, Lname, Fname, Salary
FROM   employee
WHERE  DeptId=20;

DESCRIBE temp
SELECT * FROM temp;







-- S U B - Q U E R I E S With INSERT Statement
------------ Step 4

--Qe
SELECT EmployeeId, Lname, Fname, Salary
FROM employee
WHERE DeptId=10;

--Q4
INSERT INTO temp (EmployeeId, Lname, Fname, Salary)
SELECT EmployeeId, Lname, Fname, Salary
FROM employee
WHERE DeptId=10;

DESCRIBE temp
SELECT * FROM temp;







-- T O P - N   A N A L Y S I S
------------ Step 5

--Qf
SELECT ROWNUM, EmployeeId, Lname, Fname, Salary
FROM employee;

SELECT * FROM EMPLOYEE;


--Q5
SELECT ROWNUM, EmployeeId, Lname, Fname, Salary
FROM employee
WHERE ROWNUM <= 2;






-- T O P - N   A N A L Y S I S
------------ Step 6

--Qg
SELECT    Lname, Fname, Salary
FROM      employee
ORDER BY  Salary ASC;

--Q6
SELECT ROWNUM, Lname, Fname, Salary
FROM (SELECT    Lname, Fname, Salary
      FROM      employee
      ORDER BY  Salary ASC)
WHERE ROWNUM<=3;               






------------ Step 7
--Qh
SELECT    Lname, Fname, Salary
FROM      employee
ORDER BY  Salary DESC;

--Q7
SELECT ROWNUM, Lname, Fname, Salary
FROM (SELECT    Lname, Fname, Salary
      FROM      employee
      ORDER BY  Salary DESC)
WHERE ROWNUM<=3;               



--------------------------------------------


SPOOL OFF


