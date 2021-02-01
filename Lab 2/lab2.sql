REM   Script: Session 02
REM   02

SELECT DISTINCT("Designation") FROM EMP40;

create table EMP40 ("Emp_No" number(6), "Ename" varchar2(20), "DOJ" date, "Dept"  
varchar2(10), "Dept_No" number(2), "Designation" varchar2(20), "Commision" varchar2(20), "Sal" number(7)) 
desc EMP40 
 
INSERT INTO EMP40 ("Emp_No", "Ename" , "DOJ" , "Dept" , "Dept_No", "Designation" , "Commision" , "Sal")   
    WITH input AS (   
    SELECT 7369, 'Ludwig' ,  DATE '1981-09-30' , 'Sales', 10 ,  'Salesman' , 'TRUE'  , 950  FROM dual UNION ALL  
    SELECT 7839, 'Sean'   ,  DATE '1985-09-20' , 'Sales', 30 ,  'Salesman' , 'TRUE'  , 900  FROM dual UNION ALL  
    SELECT 7521, 'Charlie',  DATE '1983-10-30' , 'IT'   , 20 ,   'Analyst' , 'FALSE' , 1000 FROM dual UNION ALL  
    SELECT 7934, 'Felix'  ,  DATE '1989-05-15' , 'None' , 40 ,   'Mangaer' , 'FALSE' , 1100 FROM dual UNION ALL  
    SELECT 7788, 'Micheal',  DATE '1990-01-30' , 'IT'   , 50 ,   'Analyst' , 'TRUE'  , 1150 FROM dual   
    ) SELECT * FROM input ;

create table EMP40 ("Emp_No" number(6), "Ename" varchar2(20), "DOJ" date, "Dept"  
varchar2(10), "Dept_No" number(2), "Designation" varchar2(20), "Commision" varchar2(20), "Sal" number(7)) 
desc EMP40 
 
INSERT INTO EMP40 ("Emp_No", "Ename" , "DOJ" , "Dept" , "Dept_No", "Designation" , "Commision" , "Sal")   
    WITH input AS (   
    SELECT 7369, 'Ludwig' ,  DATE '1981-09-30' , 'Sales', 10 ,  'Salesman' , 'TRUE'  , 950  FROM dual UNION ALL  
    SELECT 7839, 'Sean'   ,  DATE '1985-09-20' , 'Sales', 30 ,  'Salesman' , 'TRUE'  , 900  FROM dual UNION ALL  
    SELECT 7521, 'Charlie',  DATE '1983-10-30' , 'IT'   , 20 ,   'Analyst' , 'FALSE' , 1000 FROM dual UNION ALL  
    SELECT 7934, 'Felix'  ,  DATE '1989-05-15' , 'None' , 40 ,   'Mangaer' , 'FALSE' , 1100 FROM dual UNION ALL  
    SELECT 7788, 'Micheal',  DATE '1990-01-30' , 'IT'   , 50 ,   'Analyst' , 'TRUE'  , 1150 FROM dual   
    ) SELECT * FROM input ;

EMP40 


EMP40 


create table EMP40 ("Emp_No" number(6), "Ename" varchar2(20), "DOJ" date, "Dept"  
varchar2(10), "Dept_No" number(2), "Designation" varchar2(20), "Commision" varchar2(20), "Sal" number(7));

create table EMP40 ("Emp_No" number(6), "Ename" varchar2(20), "DOJ" date, "Dept"  
varchar2(10), "Dept_No" number(2), "Designation" varchar2(20), "Commision" varchar2(20), "Sal" number(7));

desc EMP40


desc EMP40


INSERT INTO EMP40 ("Emp_No", "Ename" , "DOJ" , "Dept" , "Dept_No", "Designation" , "Commision" , "Sal")   
    WITH input AS (   
    SELECT 7369, 'Ludwig' ,  DATE '1981-09-30' , 'Sales', 10 ,  'Salesman' , 'TRUE'  , 950  FROM dual UNION ALL  
    SELECT 7839, 'Sean'   ,  DATE '1985-09-20' , 'Sales', 30 ,  'Salesman' , 'TRUE'  , 900  FROM dual UNION ALL  
    SELECT 7521, 'Charlie',  DATE '1983-10-30' , 'IT'   , 20 ,   'Analyst' , 'FALSE' , 1000 FROM dual UNION ALL  
    SELECT 7934, 'Felix'  ,  DATE '1989-05-15' , 'None' , 40 ,   'Mangaer' , 'FALSE' , 1100 FROM dual UNION ALL  
    SELECT 7788, 'Micheal',  DATE '1990-01-30' , 'IT'   , 50 ,   'Analyst' , 'TRUE'  , 1150 FROM dual   
    ) SELECT * FROM input ;

select * from EMP40;

SELECT "Ename" FROM EMP40 WHERE "Designation" IN ('Salesman','Analyst');

SELECT * FROM EMP40 WHERE "DOJ" = DATE '1981-09-30';

SELECT "Ename" FROM EMP40 WHERE "Designation" != 'Mangaer';

SELECT "Ename" FROM EMP40 WHERE "Emp_No" IN (7369,7521,7839,7934,7788);

SELECT DISTINCT("Designation") FROM EMP40;

SELECT "Ename" FROM EMP40 WHERE "Commision" = 'FALSE';

SELECT "Ename" FROM EMP40 WHERE "Dept" = "None";

SELECT "Ename" FROM EMP40 WHERE "Dept" = 'None';

SELECT "Ename" FROM EMP40 WHERE "Commision" = 'TRUE';

SELECT COUNT("ENAME") FROM EMP40;

SELECT COUNT("Ename") FROM EMP40;

ALTER TABLE EMP40 ADD ("Experience" number(2));

ALTER TABLE EMP40 ADD ("Experience" number(2));

desc EMP40


ALTER TABLE EMP40 DROP COLUMN "Experince";

ALTER TABLE EMP40 DROP COLUMN "Experience";

desc EMP40


UPDATE "Dept_No" = 1 FROM EMP40 WHERE "Sal" = 950;

UPDATE EMP40 SET "Dept_No" = 1 WHERE "Sal" = 950;

select * from EMP40;

truncate table EMP40


drop table EMP40;

