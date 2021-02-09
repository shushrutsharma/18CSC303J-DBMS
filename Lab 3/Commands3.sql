1]
create table EMP49(EmpNo number(4), "Emp Name" varchar2(25), Dept number(3), Sal number(4), Manager number(4), Job varchar2(15));

2]
desc EMP49;

----------------------------------------
INSERT INTO EMP49
VALUES
(7369, 'Shushrut Kumar', 10, 8000, 7521, 'Founder');
INSERT INTO EMP49
VALUES
(7521, 'Viren Parmar', 20, 7000, 7934, 'CoFounder');
INSERT INTO EMP49
VALUES
(7934, 'Vidhi Rai', 40, 6000, 7902, 'Chief Advisor');
INSERT INTO EMP49
VALUES
(7902, 'Sachin Tilokani', 60, 2000, 7040, 'Secretary');
INSERT INTO EMP49
VALUES
(7040, 'Param Shah', 70, 1600, 7566, 'CMO');
INSERT INTO EMP49
VALUES
(7566, 'Annahita Patel', 80, 950, 7839, 'Trainee');
INSERT INTO EMP49
VALUES
(7839, 'Sakshee Bhavsar', 80, 950, 7789, 'Chief Of Staff');
INSERT INTO EMP49
VALUES
(7789, 'Anna Johnson', 90, 2800, 7369, 'Janitor');
-------------------------------
3]
select * from EMP49;

4]
select * from EMP49 ORDER BY Sal;

5]
select * from EMP49 ORDER BY Sal desc;

6]
select * from EMP49 WHERE Sal BETWEEN 1500 AND 2500;

7]
select * from EMP49 WHERE Manager in (7902,7566,7789);

8]
select * from EMP49 WHERE "Emp Name" LIKE 'J%' OR "Emp Name" LIKE 'T%';

9]
select * from EMP49 WHERE Job LIKE '%M%' OR Job LIKE '%P%';

10]
select DISTINCT(Job) from EMP49;

11]
select * from EMP49 WHERE Dept in (10,20);

12]
select COUNT(DISTINCT(Job)) from EMP49;

13]
select DISTINCT(Dept) from EMP49;

14]
select "Emp Name" from EMP49 WHERE "Emp Name" LIKE '%AN%';